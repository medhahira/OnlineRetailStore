import React from 'react';
import './index.css';

const Home = () => {
	return (
		<div>

{/* Source : https://www.mayoclinic.org/diseases-conditions/cataracts/symptoms-causes/syc-20353790 */}
			<section class="section">
				<div class="box-main">
					<div class="firstHalf">
						<br></br><br></br><center>
						<img alt="homepage_img" height="40%" width="60%" src= "https://miro.medium.com/v2/resize:fit:1018/1*iAu65xDmvpVdBJgps6EDEw.png" />
						<img alt="homepage_benefit_img" height="40%" width="80%" src= "https://sslimages.shoppersstop.com/sys-master/root/hb5/h60/27269490540574/web_hp_icon-strips_main_20220322.jpg" />
						</center>
						<h1 class="text-big"><br></br>
            				Why One Stop Bazaar?
						</h1><br></br>
						<p class="text-small">
							OneStopBazaar is a one-stop shop for all necessary items that we need for our households. As a child, I remember going to a  hypermarket once every fortnight to help mom and dad stock up on essentials for home. As years have passed, there are not only a physical hypermarket that families visit at home, but also online stores where we have all essentials at our fingertips. This revolution of online grocery and essential shopping peaked during the years 2020-21 because of COVID-19.
						</p><br></br>
						<p class="text-small">
						Now we have adapted to online shopping and find it convenient too.
						</p><br></br>
						<p class="text-small">
						Quick delivery options make shopping easy from the comfort of your home.
						</p><br></br>
				</div>
            <br></br>
			</div>
			</section>
      <section class="section2">
      <div class="box-main">
        <h1 class="text-mid"><br></br>
        <button type="button" class="top-center" color='blue'>Start Shopping</button><br></br><br></br>
        </h1>
      </div>
      </section>
			<footer className="footer">
				<p className="text-footer">
					Made by Parisha Agrawal, Medha Hira
				</p>
			</footer>
		</div>
    );
};

export default Home;