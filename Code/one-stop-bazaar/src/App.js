import React from 'react';
import './App.css';
import Navbar from './components/Navbar';
import { BrowserRouter as Router, Routes, Route}
	from 'react-router-dom';
import Home from './pages/home';
import Categories from './pages/categories';
import Ratings from './pages/ratings';
import SignUp from './pages/signup';
import Contact from './pages/contact';
import Cart from './pages/cart';

function App() {
return (
	<Router>
	<Navbar />
	<Routes>
		<Route path='/' element={<Home />} />
		<Route path='/categories' element={<Categories/>} />
		<Route path='/contact' element={<Contact/>} />
		<Route path='/ratings' element={<Ratings/>} />
		<Route path='/sign-up' element={<SignUp/>} />
		<Route path='/cart' element={<Cart/>} />
	</Routes>
	</Router>
);
}

export default App;
