//
//  ViewController.swift
//  Vuppala_SearchApp
//
//  Created by Vuppala,Sai Krishna on 3/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var search: UIButton!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    @IBOutlet weak var prevImage: UIButton!
    
    @IBOutlet weak var nextImage: UIButton!
    
    @IBOutlet weak var resetbutton: UIButton!
    
    var arr = [["player1","player2","player3","player4","player5"],["place1","place2","place3","place4","place5"],["actor1","actor2","actor3","actor4","actor5",],["bg","404"]]
    
    var players = ["player","players","cricketer","cricket","dhoni","kl rahul","hardik pandya","ishanth sharma","dravid","celebrity","batsmen","match"]
    
    var places = ["places","place","barcelona","paris","sydney","rome","mysore","journey","roam","memories","travelling"]
        
    var actors = ["actor","actors","hero","tollywood","srihari","alluarjun","surya","vikram","ramcharan","celebrity","hero","film"]

    
    var topic = 0
    var imag1:Int!
    var imag2:Int!
    var imag3:Int!
    var text1:Int!
    var text2:Int!
    var text3:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prevImage.isHidden = true
        nextImage.isHidden = true
        search.isEnabled = false
        resetbutton.isHidden = true
        resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
    }

    @IBAction func searchTextField(_ sender: UITextField) {
        
        search.isEnabled = true
        if(sender.text == ""){
            search.isEnabled = false
            
        }
        else{
            prevImage.isEnabled = false
            nextImage.isEnabled = false
            search.isEnabled = true
            resetbutton.isHidden = true
        }
    }
    
    var player = [["Dravid", "Sachin", "AbDevilliers", "Dhoni", "Kallis"],["The 39-year-old Dhoni is also the most successful T20 skipper in history with 176 wins and 118 losses while his trophy cabinet includes the ICC T20 World Cup (2007), 3 IPL titles (2010, 2011 & 2018) and two Champions League T20 trophies (2010 & 2014)","A tall, elegant right-hand batsman who can keep wicket in a crisis, KL Rahul is among the most highly rated opening batsmen in India's next generation","Hardik plays as an All-Rounder. He bats right-handed and bowls right-arm fast-medium. Pandya is widely popular for his aggressive style of batting and his exceptional fielding skills. Pandya loves to take the charge to the bowler","Ishant Vijay Sharma, a tall, lanky pace bowler with a thin frame and a head full of hair flinging all over the place, steaming into bowl to arguably Australia’s one of the finest batsman Ricky Ponting and continuously bouncing him out on the pacy wickets of Australia is possibly the most vivid memory the cricket lovers have of Ishant Sharma when he burst onto the scene","He represented the Karnataka state team in U-15, U-17 and U-19 age groups, leading to a place in state’s Ranji Trophy team. He made his Ranji debut for Karnataka in the 1991-92 season.He had a terrific first season and aggregated a total of 380 runs at an average of 63.3. It included a couple of hundreds. He was then selected to play for South Zone in the Duleep Trophy"]]
    
    
    var place = [["Barcelona","Paris","Sydney","Rome","Mysore"],["Barcelona , Spanish: is a city on the coast of northeastern Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second most populous municipality of Spain. With a population of 1.6 million within city limits, its urban area extends to numerous neighbouring municipalities within the Province of Barcelona and is home to around 4.8 million people.","Paris is the capital and most populous city of France, with an estimated population of 2,165,423 residents in 2019 in an area of more than 105 square kilometres (41 square miles). Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, fashion, gastronomy, science, and arts. It is estimated with population of 12,174,880 in 2017, or about 18 percent of the population of France.","Sydney SID-nee; Dharug: Gadi. Greater Sydney, Dharug: Eora) is the capital city of the state of New South Wales, and the most populous city in Australia and Oceania. Located on Australia's east coast, the metropolis surrounds Port Jackson and extends about 70 km (43.5 mi) on its periphery towards the Blue Mountains to the west, Hawkesbury to the north, the Royal National Park to the south and Macarthur to the south-west.","Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale. With 2,860,009 residents in 1,285 km2 (496.1 sq mi), Rome is the country's most populated comune and the third most populous city in the European Union by population within city limits.","Mysore, officially Mysuru, is a city in the southern part of the state of Karnataka, India. Mysore city is geographically located between 12° 18′ 26″ north latitude and 76° 38′ 59″ east longitude. It is located at an altitude of 770 m (2,530 ft) above mean sea level. It served as the capital city of the Kingdom of Mysore for nearly six centuries from 1399 until 1956."]]
    
    var actor = [["Mahesh Babu","Prabhas","Ravi Teja","Ramcharan","Venkatesh"],["He had acted in 98 movies and two more of his films were just to be released. He started his tryst with the tinsel world in 1986 with the film ‘Thirugbaatu.’ Subsequently, he donned the roles of a stunt performer and villain before making his debut as a hero in ‘Police’in 1999","He was born on April 8, 1983, in Chennai, India. His father Allu Aravind is a famous producer. In 1985, at the age of two, He worked as a child artist in the film Vijetha. Sixteen years later, Arjun made a cameo appearance as Gopi, a dancer, in the 2001 film Daddy directed by Suresh Krissna. Then he appeared in Kovelamudi Raghavendra Rao‘s Gangotri","Saravanan Sivakumar, known by his stage name Suriya, is an Indian actor, producer, television presenter and a philanthropist. He is best known for his work in Tamil cinema, where he is one of the highest paid actors","Kennedy John Victor, better known by his stage name Vikram, is an Indian actor and playback singer who predominantly appears in Tamil cinema and also appeared in Telugu, Malayalam and Hindi cinema","Konidela Ram Charan Teja is an Indian actor, producer and entrepreneur who works predominantly in Telugu cinema. One of the highest-paid actors in India, he is the recipient of several awards, including three Filmfare Awards and two Nandi Awards."]]
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        imag1 = 0
        imag2 = 0
        imag3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        prevImage.isHidden = false
        nextImage.isHidden = false
        prevImage.isEnabled = false
        nextImage.isEnabled = false
        resetbutton.isHidden = false
        if(players.contains(searchTextField.text!)){
            nextImage.isEnabled = true
            prevImage.isEnabled = false
            resultImage.image = UIImage(named: arr[0][imag1])
            topic = 1
            topicInfoText.text = player[1][text1]
        }
        else if(places.contains(searchTextField.text!)){
            nextImage.isEnabled = true
            prevImage.isEnabled = false
            resultImage.image = UIImage(named: arr[1][imag2])
            topic = 2
            topicInfoText.text = place[1][text2]
        }
        else if(actors.contains(searchTextField.text!)){
            nextImage.isEnabled = true
            prevImage.isEnabled = false
            resultImage.image = UIImage(named: arr[2][imag3])
            topic = 3
            topicInfoText.text = actor[1][text3]
        }
        else{
            resultImage.image = UIImage(named: arr[3][1])
            topicInfoText.text = nil
            prevImage.isHidden = true
            nextImage.isHidden = true
            resetbutton.isEnabled = true
        }
    }
    
    @IBAction func showNextImagesBtn(_ sender: UIButton) {
        if(topic == 1){
            imag1 += 1
            text1 += 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 += 1
            text2 += 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 += 1
            text3 += 1
            dataUpdate(imgNo: imag3)
        }
        
    }
    @IBAction func showPrevImageBtn(_ sender: UIButton) {
        if(topic == 1){
            imag1 -= 1
            text1 -= 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 -= 1
            text2 -= 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 -= 1
            text3 -= 1
            dataUpdate(imgNo: imag3)
        }
    }
    @IBAction func resetButtonClicked(_ sender: UIButton) {
        
        prevImage.isHidden = true
        nextImage.isHidden = true
        topicInfoText.text = nil
        searchTextField.text = nil
        resetbutton.isHidden = true
        resultImage.image = UIImage(named: arr[3][0])
        imag1 = 0
        imag2 = 0
        imag3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        topic = 0
    }
    
    func dataUpdate(imgNo: Int){
        if(topic == 1){
            if imag1 == arr[0].count-1 {
                nextImage.isEnabled = false
                prevImage.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = player[1][text1]
            }
            else if(imag1 == 0){
                prevImage.isEnabled = false
                nextImage.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = player[1][text1]
            }
            else{
                nextImage.isEnabled = true
                prevImage.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = player[1][text1]
            }
        }
        if(topic == 2){
            if imag2 == arr[1].count-1 {
                nextImage.isEnabled = false
                prevImage.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = place[1][text2]
            }
            else if(imag2 == 0){
                prevImage.isEnabled = false
                nextImage.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = place[1][text2]
            }
            else{
                nextImage.isEnabled = true
                prevImage.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = place[1][text2]
                
            }
        }
        if(topic == 3){
            if imag3 == arr[2].count-1 {
                nextImage.isEnabled = false
                prevImage.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = actor[1][text3]
            }
            else if(imag3 == 0){
                prevImage.isEnabled = false
                nextImage.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = actor[1][text3]
            }
            else{
                nextImage.isEnabled = true
                prevImage.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = actor[1][text3]
                
            }
        }
    }
}

