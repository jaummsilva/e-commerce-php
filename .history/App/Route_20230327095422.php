<?php

namespace App;

use MF\Init\Bootstrap;

class Route extends Bootstrap {

	protected function initRoutes() {

		$routes['home'] = array(
			'route' => '/',
			'controller' => 'appController',
			'action' => 'index'
		);
		$routes['login'] = array(
			'route' => '/login',
			'controller' => 'loginController',
			'action' => 'index'
		);
		$routes['autenticar'] = array(
			'route' => '/autenticar',
			'controller' => 'AuthController',
			'action' => 'autenticar'
		);
		$routes['sair'] = array(
			'route' => '/sair',
			'controller' => 'AuthController',
			'action' => 'sair'
		);
		$routes['loginAdmin'] = array(
			'route' => '/loginAdmin',
			'controller' => 'AdminController',
			'action' => 'loginAdmin'
		);
		$routes['autenticarAdmin'] = array(
			'route' => '/autenticarAdmin',
			'controller' => 'AdminController',
			'action' => 'autenticarAdmin'
		);
		$routes['homeAdmin'] = array(
			'route' => '/homeAdmin',
			'controller' => 'AdminController',
			'action' => 'homeAdmin'
		);
		$routes['cadastroUsuarioAdmin'] = array(
			'route' => '/cadastroUsuarioAdmin',
			'controller' => 'AdminController',
			'action' => 'cadastroUsuarioAdmin'
		);
		$routes['registrar'] = array(
			'route' => '/registrar',
			'controller' => 'AdminController',
			'action' => 'registrar'
		);
		$routes['listagemUsuarioAdmin'] = array(
			'route' => '/listagemUsuarioAdmin',
			'controller' => 'AdminController',
			'action' => 'listagemUsuarioAdmin'
		);
		$routes['editarUsuarioAdmin'] = array(
			'route' => '/editarUsuarioAdmin/{id}',
			'controller' => 'AdminController',
			'action' => 'editarUsuarioAdmin'
		);
		$routes['editarProdutoAdmin'] = array(
			'route' => '/editarUsuarioAdmin/{id}',
			'controller' => 'AdminController',
			'action' => 'editarUsuarioAdmin'
		);
		$routes['editar'] = array(
			'route' => '/editar',
			'controller' => 'AdminController',
			'action' => 'editar'
		);
		$routes['deletar'] = array(
			'route' => '/deletar',
			'controller' => 'AdminController',
			'action' => 'deletar'
		);
		$routes['cadastroProdutoAdmin'] = array(
			'route' => '/cadastroProdutoAdmin',
			'controller' => 'AdminController',
			'action' => 'cadastroProdutoAdmin'
		);
		$routes['registrarProduto'] = array(
			'route' => '/registrarProduto',
			'controller' => 'AdminController',
			'action' => 'registrarProduto'
		);
		$routes['listagemProdutoAdmin'] = array(
			'route' => '/listagemProdutoAdmin',
			'controller' => 'AdminController',
			'action' => 'listagemProdutoAdmin'
		);
		$this->setRoutes($routes);
	}

}

?>