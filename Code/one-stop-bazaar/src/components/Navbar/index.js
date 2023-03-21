import React from "react";
import { Nav, NavLink, NavMenu }
	from "./NavbarElements";

const Navbar = () => {
return (
	<>
	<Nav>
		{/* <NavMenu> */}
        <ul class="nav-list">
        <div class="logo">
            <img alt="logo" src= "data:image/jpeg;base64,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" />
        </div>
        <li><h1 class = "text-big"><b>OneStopBazaar</b></h1></li>
    {/* </ul> */}

    <NavMenu>
        <NavLink to="/" activeStyle>
			Home
		</NavLink>
		<NavLink to="/categories" activeStyle>
			Categories
		</NavLink>
		<NavLink to="/ratings" activeStyle>
			Ratings
		</NavLink>
		<NavLink to="/sign-up" activeStyle>
			Sign Up
		</NavLink>
		<NavLink to="/contact" activeStyle>
			Contact Us
		</NavLink>
		</NavMenu>

    <div class = "rightnav">
	<button class="cart_btn">Cart</button>
    <input type="text" name="search" id="search" size="10"/>
    <button class="btn">Search</button>
    </div>
    </ul>

	</Nav>
	</>
);
};

export default Navbar;
