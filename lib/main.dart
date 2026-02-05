import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:appmova/providers/carrito_provider.dart';
import 'package:appmova/providers/transaccion_provider.dart';
import 'package:appmova/screens/auth/login_screen.dart';
import 'package:appmova/screens/auth/register_screen.dart';
import 'package:appmova/screens/auth/recover_email_screen.dart';
import 'package:appmova/screens/auth/verify_code_screen.dart';
import 'package:appmova/screens/auth/recover_question_screen.dart';
import 'package:appmova/screens/auth/reset_password_screen.dart';
import 'package:appmova/screens/cuenta/cuenta_screen.dart';
import 'package:appmova/screens/tienda/catalogo_screen.dart';
import 'package:appmova/screens/tienda/producto_detalle_screen.dart';
import 'package:appmova/screens/tienda/carrito_screen.dart';
import 'package:appmova/screens/pedidos/pedidos_screen.dart';
import 'package:appmova/screens/pedidos/detalle_pedido_screen.dart';
import 'package:appmova/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final authProvider = AuthProvider();
  await authProvider.checkAuthStatus(); // Run before app starts
  runApp(MyApp(authProvider: authProvider));
}

class MyApp extends StatelessWidget {
  final AuthProvider authProvider;

  const MyApp({super.key, required this.authProvider});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: authProvider),
        ChangeNotifierProvider(create: (_) => CarritoProvider()),
        ChangeNotifierProvider(create: (_) => TransaccionProvider()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'AppMova',
            theme: AppConstants.appTheme,
            routerConfig: _router(context),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }

  GoRouter _router(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    return GoRouter(
      initialLocation: '/login',
      redirect: (context, state) {
        final isAuthenticated = authProvider.usuario != null && authProvider.token != null;
        final isAuthRoute = state.matchedLocation.startsWith('/login') ||
            state.matchedLocation.startsWith('/register') ||
            state.matchedLocation.startsWith('/recover-email') ||
            state.matchedLocation.startsWith('/verify-code') ||
            state.matchedLocation.startsWith('/recover-question') ||
            state.matchedLocation.startsWith('/reset-password');

        print('Redirect: isAuthenticated=$isAuthenticated, location=${state.matchedLocation}, isAuthRoute=$isAuthRoute');

        if (!isAuthenticated && !isAuthRoute) {
          return '/login';
        }
        if (isAuthenticated && isAuthRoute) {
          return '/home';
        }
        return null;
      },
      refreshListenable: GoRouterRefreshStream(authProvider),
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/register',
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: '/recover-email',
          builder: (context, state) => const RecoverEmailScreen(),
        ),
        GoRoute(
          path: '/verify-code',
          builder: (context, state) => VerifyCodeScreen(email: state.extra as String),
        ),
        GoRoute(
          path: '/recover-question',
          builder: (context, state) => const RecoverQuestionScreen(),
        ),
        GoRoute(
          path: '/reset-password',
          builder: (context, state) => ResetPasswordScreen(email: state.extra as String),
        ),
        ShellRoute(
          builder: (context, state, child) {
            print('MainScreen rendered with location: ${state.matchedLocation}');
            return MainScreen(
              child: child,
              currentLocation: state.matchedLocation,
            );
          },
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
            ),
            GoRoute(
              path: '/cuenta',
              builder: (context, state) => const CuentaScreen(),
            ),
            GoRoute(
              path: '/catalogo',
              builder: (context, state) => const CatalogoScreen(),
            ),
            GoRoute(
              path: '/carrito',
              builder: (context, state) => const CarritoScreen(),
            ),
            GoRoute(
              path: '/pedidos',
              builder: (context, state) => const PedidosScreen(),
            ),
            GoRoute(
              path: '/producto/:id',
              builder: (context, state) => ProductoDetalleScreen(
                idProducto: int.parse(state.pathParameters['id']!),
              ),
            ),
            GoRoute(
              path: '/pedido/:id',
              builder: (context, state) => DetallePedidoScreen(
                idTransaccion: int.parse(state.pathParameters['id']!),
              ),
            ),
          ],
        ),
      ],
      errorBuilder: (context, state) => Scaffold(
        body: Center(
          child: Text('Error: ${state.error}'),
        ),
      ),
    );
  }
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(this.authProvider) {
    authProvider.addListener(notifyListeners);
  }

  final AuthProvider authProvider;

  @override
  void dispose() {
    authProvider.removeListener(notifyListeners);
    super.dispose();
  }
}

class MainScreen extends StatefulWidget {
  final Widget child;
  final String currentLocation;

  const MainScreen({super.key, required this.child, required this.currentLocation});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedIndex;

  static const List<String> _paths = [
    '/home',
    '/catalogo',
    '/carrito',
    '/pedidos',
    '/cuenta',
  ];

  static const List<IconData> _icons = [
    Icons.home,
    Icons.store,
    Icons.shopping_cart,
    Icons.receipt,
    Icons.person,
  ];

  static const List<String> _labels = [
    'Inicio',
    'Catálogo',
    'Carrito',
    'Pedidos',
    'Cuenta',
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = _paths.indexWhere((path) {
      if (widget.currentLocation.startsWith('/producto') && path == '/catalogo') {
        return true;
      }
      if (widget.currentLocation.startsWith('/pedido') && path == '/pedidos') {
        return true;
      }
      return widget.currentLocation.startsWith(path);
    });
    if (_selectedIndex == -1) _selectedIndex = 0;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    GoRouter.of(context).go(_paths[index]);
  }

  @override
  Widget build(BuildContext context) {
    print('MainScreen rendered with location: ${widget.currentLocation}');
    return SafeArea(
      child: Scaffold(
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          items: List.generate(
            _paths.length,
                (index) => BottomNavigationBarItem(
              icon: Icon(_icons[index]),
              label: _labels[index],
            ),
          ),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppConstants.primaryColor,
        ),
      ),
    );
  }
}