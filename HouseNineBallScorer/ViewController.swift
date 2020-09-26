//
//  ViewController.swift
//  HouseNineBallScorer
//
//  Created by skwong on 9/6/20.
//  Copyright © 2020 skwong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        player2Btn.isHidden = true
        player2BtnMinus.isHidden = true
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    struct Game {
        
        var playerA: Int
        var playerB: Int
        var deadBall: Int
        var gameTotal: Int
        var innings: Int
        
        
    }
    
    var game1 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game2 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game3 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game4 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game5 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game6 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game7 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game8 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game9 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game10 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game11 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game12 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game13 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game14 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    var game15 = Game(playerA: 0, playerB: 0, deadBall: 0, gameTotal: 0, innings: 0)
    
    var nineballValue = 3
    var totalBallCount = 0
        
    var innings = 0
    var player1ID = 1
    var player2ID = 2
    
    var player1Score = 0
    var player2Score = 0
    var deadBallScore = 0

    
//    var gm1p1Score = 0
//    var gm1p2Score = 0
//    var gm1DBScore = 0
//    var gm1Innings = 0
//
//    var gm2p1Score = 0
//    var gm2p2Score = 0
//    var gm2DBScore = 0
//    var gm2Innings = 0
//
//    var gm3p1Score = 0
//    var gm3p2Score = 0
//    var gm3DBScore = 0
//    var gm3Innings = 0
//
//    var gm4p1Score = 0
//    var gm4p2Score = 0
//    var gm4DBScore = 0
//    var gm4Innings = 0
//
//    var gm5p1Score = 0
//    var gm5p2Score = 0
//    var gm5DBScore = 0
//    var gm5Innings = 0
//
//    var gm6p1Score = 0
//    var gm6p2Score = 0
//    var gm6DBScore = 0
//    var gm6Innings = 0
//
//    var gm7p1Score = 0
//    var gm7p2Score = 0
//    var gm7DBScore = 0
//    var gm7nnings = 0
//
//    var gm8p1Score = 0
//    var gm8p2Score = 0
//    var gm8DBScore = 0
//    var gm8Innings = 0
//
//    var gm9p1Score = 0
//    var gm9p2Score = 0
//    var gm9DBScore = 0
//    var gm9Innings = 0
//
//    var gm10p1Score = 0
//    var gm10p2Score = 0
//    var gm10DBScore = 0
//    var gm10Innings = 0
//
//    var gm11p1Score = 0
//    var gm11p2Score = 0
//    var gm11DBScore = 0
//    var gm11Innings = 0
//
//    var gm12p1Score = 0
//    var gm12p2Score = 0
//    var gm12DBScore = 0
//    var gm12Innings = 0
//
//    var gm13p1Score = 0
//    var gm13p2Score = 0
//    var gm13DBScore = 0
//    var gm13Innings = 0
//
//    var gm14p1Score = 0
//    var gm14p2Score = 0
//    var gm14DBScore = 0
//    var gm14Innings = 0
//
//    var gm15p1Score = 0
//    var gm15p2Score = 0
//    var gm15DBScore = 0
//    var gm15Innings = 0
//
    
    
    //Static Labels
    
    
    //Player Score Labels
    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    @IBOutlet weak var totalBallCountLabel: UILabel!
    @IBOutlet weak var totalInningsLabel: UILabel!
    @IBOutlet weak var totalDeadBallLabel: UILabel!
    
    @IBOutlet weak var player1Btn: UIButton!
    @IBOutlet weak var player1BtnMinus: UIButton!
    @IBOutlet weak var player2Btn: UIButton!
    @IBOutlet weak var player2BtnMinus: UIButton!
   
    
    
    
    //Player1 Game Board Score Labels
    @IBOutlet weak var gm1P1ScoreLabel: UILabel!
    @IBOutlet weak var gm2P1ScoreLabel: UILabel!
    @IBOutlet weak var gm3P1ScoreLabel: UILabel!
    @IBOutlet weak var gm4P1ScoreLabel: UILabel!
    @IBOutlet weak var gm5P1ScoreLabel: UILabel!
    @IBOutlet weak var gm6P1ScoreLabel: UILabel!
    @IBOutlet weak var gm7P1ScoreLabel: UILabel!
    @IBOutlet weak var gm8P1ScoreLabel: UILabel!
    @IBOutlet weak var gm9P1ScoreLabel: UILabel!
    @IBOutlet weak var gm10P1ScoreLabel: UILabel!
    @IBOutlet weak var gm11P1ScoreLabel: UILabel!
    @IBOutlet weak var gm12P1ScoreLabel: UILabel!
    @IBOutlet weak var gm13P1ScoreLabel: UILabel!
    @IBOutlet weak var gm14P1ScoreLabel: UILabel!
    @IBOutlet weak var gm15P1ScoreLabel: UILabel!
    
    //Player2 Game Board Score Labels
    @IBOutlet weak var gm1P2ScoreLabel: UILabel!
    @IBOutlet weak var gm2P2ScoreLabel: UILabel!
    @IBOutlet weak var gm3P2ScoreLabel: UILabel!
    @IBOutlet weak var gm4P2ScoreLabel: UILabel!
    @IBOutlet weak var gm5P2ScoreLabel: UILabel!
    @IBOutlet weak var gm6P2ScoreLabel: UILabel!
    @IBOutlet weak var gm7P2ScoreLabel: UILabel!
    @IBOutlet weak var gm8P2ScoreLabel: UILabel!
    @IBOutlet weak var gm9P2ScoreLabel: UILabel!
    @IBOutlet weak var gm10P2ScoreLabel: UILabel!
    @IBOutlet weak var gm11P2ScoreLabel: UILabel!
    @IBOutlet weak var gm12P2ScoreLabel: UILabel!
    @IBOutlet weak var gm13P2ScoreLabel: UILabel!
    @IBOutlet weak var gm14P2ScoreLabel: UILabel!
    @IBOutlet weak var gm15P2ScoreLabel: UILabel!
    
    
    //Dead Ball Score Labels
    @IBOutlet weak var gm1DBScoreLabel: UILabel!
    @IBOutlet weak var gm2DBScoreLabel: UILabel!
    @IBOutlet weak var gm3DBScoreLabel: UILabel!
    @IBOutlet weak var gm4DBScoreLabel: UILabel!
    @IBOutlet weak var gm5DBScoreLabel: UILabel!
    @IBOutlet weak var gm6DBScoreLabel: UILabel!
    @IBOutlet weak var gm7DBScoreLabel: UILabel!
    @IBOutlet weak var gm8DBScoreLabel: UILabel!
    @IBOutlet weak var gm9DBScoreLabel: UILabel!
    @IBOutlet weak var gm10DBScoreLabel: UILabel!
    @IBOutlet weak var gm11DBScoreLabel: UILabel!
    @IBOutlet weak var gm12DBScoreLabel: UILabel!
    @IBOutlet weak var gm13DBScoreLabel: UILabel!
    @IBOutlet weak var gm14DBScoreLabel: UILabel!
    @IBOutlet weak var gm15DBScoreLabel: UILabel!


    //Inning Labels
    @IBOutlet weak var gm1InningLabel: UILabel!
    @IBOutlet weak var gm2InningLabel: UILabel!
    @IBOutlet weak var gm3InningLabel: UILabel!
    @IBOutlet weak var gm4InningLabel: UILabel!
    @IBOutlet weak var gm5InningLabel: UILabel!
    @IBOutlet weak var gm6InningLabel: UILabel!
    @IBOutlet weak var gm7InningLabel: UILabel!
    @IBOutlet weak var gm8InningLabel: UILabel!
    @IBOutlet weak var gm9InningLabel: UILabel!
    @IBOutlet weak var gm10InningLabel: UILabel!
    @IBOutlet weak var gm11InningLabel: UILabel!
    @IBOutlet weak var gm12InningLabel: UILabel!
    @IBOutlet weak var gm13InningLabel: UILabel!
    @IBOutlet weak var gm14InningLabel: UILabel!
    @IBOutlet weak var gm15InningLabel: UILabel!


    
    @IBAction func switchPlayerBtnPressed(_ sender: UIButton) {
        
        if player1ID == 1 && player2ID == 2 {
            
            player2Btn.isHidden = false
            player2BtnMinus.isHidden = false
            
            player1Btn.isHidden = true
            player1BtnMinus.isHidden = true
            
            player1ID = 2
            player2ID = 1
            
        }
        
        else if player1ID == 2 && player2ID == 1 {
            
            player2Btn.isHidden = true
            player2BtnMinus.isHidden = true
            
            player1Btn.isHidden = false
            player1BtnMinus.isHidden = false
            
            player1ID = 1
            player2ID = 2
            
            innings = innings + 1
            totalInningsLabel.text = "\(innings)"
            
            
            updateInnings()
            
        }
                
    }
    
    
    
    @IBAction func player1BtnPressed(_ sender: UIButton) {
        
        if sender.currentTitle == "+" {
            
            totalBallCount = totalBallCount + 1
            player1Score = player1Score + 1
            
            totals()
            
            
            if game1.gameTotal >= 0 && game1.gameTotal < 11 {
                game1.playerA = game1.playerA + 1
            }
            
            if totalBallCount >= 12 && game2.gameTotal < 11 {
                game2.playerA = game2.playerA + 1
            }
            
            if totalBallCount >= 23 && game3.gameTotal < 11 {
                game3.playerA = game3.playerA + 1
            }
            
            if totalBallCount >= 34 && game4.gameTotal < 11 {
                game4.playerA = game4.playerA + 1
            }
            
            if totalBallCount >= 45 && game5.gameTotal < 11 {
                game5.playerA = game5.playerA + 1
            }
            
            if totalBallCount >= 56 && game6.gameTotal < 11 {
                game6.playerA = game6.playerA + 1
            }
            
            if totalBallCount >= 67 && game7.gameTotal < 11 {
                game7.playerA = game7.playerA + 1
            }
            
            if totalBallCount >= 78 && game8.gameTotal < 11 {
                game8.playerA = game8.playerA + 1
            }
            
            if totalBallCount >= 89 && game9.gameTotal < 11 {
                game9.playerA = game9.playerA + 1
            }
            
            if totalBallCount >= 100 && game10.gameTotal < 11 {
                game10.playerA = game10.playerA + 1
            }
            
            if totalBallCount >= 111 && game11.gameTotal < 11 {
                game11.playerA = game11.playerA + 1
            }
            
            if totalBallCount >= 122 && game12.gameTotal < 11 {
                game12.playerA = game12.playerA + 1
            }
            
            if totalBallCount >= 133 && game13.gameTotal < 11 {
                game13.playerA = game13.playerA + 1
            }
            
            if totalBallCount >= 144 && game14.gameTotal < 11 {
                game14.playerA = game14.playerA + 1
            }
            
            if totalBallCount >= 155 && game15.gameTotal < 11 {
                game15.playerA = game15.playerA + 1
            }
            
            
                
            
            
            
        }
        
        if sender.currentTitle == "-" {
            
            totalBallCount = totalBallCount - 1
            player1Score = player1Score - 1
            
            totals()

            
            
            if totalBallCount >= 0 && totalBallCount < 11 {
                game1.playerA = game1.playerA - 1
            }
            
            if totalBallCount >= 11 && totalBallCount < 22 {
                game2.playerA = game2.playerA - 1
            }
            
            if totalBallCount >= 22 && totalBallCount < 33 {
                game3.playerA = game3.playerA - 1
            }
            
            if totalBallCount >= 33 && totalBallCount < 44 {
                game4.playerA = game4.playerA - 1
            }
            
            if totalBallCount >= 44 && totalBallCount < 55 {
                game5.playerA = game5.playerA - 1
            }
            
            if totalBallCount >= 55 && totalBallCount < 66 {
                game6.playerA = game6.playerA - 1
            }
            
            if totalBallCount >= 66 && totalBallCount < 77 {
                game7.playerA = game7.playerA - 1
            }
            
            if totalBallCount >= 77 && totalBallCount < 88 {
                game8.playerA = game8.playerA - 1
            }
            
            if totalBallCount >= 88 && totalBallCount < 99 {
                game9.playerA = game9.playerA - 1
            }
            
            if totalBallCount >= 99 && totalBallCount < 110 {
                game10.playerA = game10.playerA - 1
            }
            
            if totalBallCount >= 110 && totalBallCount < 121 {
                game11.playerA = game11.playerA - 1
            }
            
            if totalBallCount >= 121 && totalBallCount < 132 {
                game12.playerA = game12.playerA - 1
            }
            
            if totalBallCount >= 132 && totalBallCount < 143 {
                game13.playerA = game13.playerA - 1
            }
            
            if totalBallCount >= 143 && totalBallCount < 154 {
                game14.playerA = game14.playerA - 1
            }
            
            if totalBallCount >= 154 && totalBallCount < 165 {
                game15.playerA = game15.playerA - 1
            }
            
            
        }
        

       
        updateScoreLabel()
        
    
                   
    }
        
    @IBAction func player2BtnPressed(_ sender: UIButton) {
        
       if sender.currentTitle == "+" {
            
        totalBallCount = totalBallCount + 1
        player2Score = player2Score + 1
        
        totals()

        
        if game1.gameTotal >= 0 && game1.gameTotal < 11 {
            game1.playerB = game1.playerB + 1
        }
        
        if totalBallCount >= 12 && game2.gameTotal < 11 {
            game2.playerB = game2.playerB + 1
        }
        
        if totalBallCount >= 23 && game3.gameTotal < 11 {
            game3.playerB = game3.playerB + 1
        }
        
        if totalBallCount >= 34 && game4.gameTotal < 11 {
            game4.playerB = game4.playerB + 1
        }
        
        if totalBallCount >= 45 && game5.gameTotal < 11 {
            game5.playerB = game5.playerB + 1
        }
        
        if totalBallCount >= 56 && game6.gameTotal < 11 {
            game6.playerB = game6.playerB + 1
        }
        
        if totalBallCount >= 67 && game7.gameTotal < 11 {
            game7.playerB = game7.playerB + 1
        }
        
        if totalBallCount >= 78 && game8.gameTotal < 11 {
            game8.playerB = game8.playerB + 1
        }
        
        if totalBallCount >= 89 && game9.gameTotal < 11 {
            game9.playerB = game9.playerB + 1
        }
        
        if totalBallCount >= 100 && game10.gameTotal < 11 {
            game10.playerB = game10.playerB + 1
        }
        
        if totalBallCount >= 111 && game11.gameTotal < 11 {
            game11.playerB = game11.playerB + 1
        }
        
        if totalBallCount >= 122 && game12.gameTotal < 11 {
            game12.playerB = game12.playerB + 1
        }
        
        if totalBallCount >= 133 && game13.gameTotal < 11 {
            game13.playerB = game13.playerB + 1
        }
        
        if totalBallCount >= 144 && game14.gameTotal < 11 {
            game14.playerB = game14.playerB + 1
        }
        
        if totalBallCount >= 155 && game15.gameTotal < 11 {
            game15.playerB = game15.playerB + 1
        }
            
            
                
            
            
            
        }
        

        
        if sender.currentTitle == "-" {
            
            totalBallCount = totalBallCount - 1
            player2Score = player2Score - 1
            
            totals()

            
            if totalBallCount < 11 {
                game1.playerB = game1.playerB - 1
            }
            
            if totalBallCount >= 11 && totalBallCount < 22 {
                game2.playerB = game2.playerB - 1
            }
            
            if totalBallCount >= 22 && totalBallCount < 33 {
                game3.playerB = game3.playerB - 1
            }
            
            if totalBallCount >= 33 && totalBallCount < 44 {
                game4.playerB = game4.playerB - 1
            }
            
            if totalBallCount >= 44 && totalBallCount < 55 {
                game5.playerB = game5.playerB - 1
            }
            
            if totalBallCount >= 55 && totalBallCount < 66 {
                game6.playerB = game6.playerB - 1
            }
            
            if totalBallCount >= 66 && totalBallCount < 77 {
                game7.playerB = game7.playerB - 1
            }
            
            if totalBallCount >= 77 && totalBallCount < 88 {
                game8.playerB = game8.playerB - 1
            }
            
            if totalBallCount >= 88 && totalBallCount < 99 {
                game9.playerB = game9.playerB - 1
            }
            
            if totalBallCount >= 99 && totalBallCount < 110 {
                game10.playerB = game10.playerB - 1
            }
            
            if totalBallCount >= 110 && totalBallCount < 121 {
                game11.playerB = game11.playerB - 1
            }
            
            if totalBallCount >= 121 && totalBallCount < 132 {
                game12.playerB = game12.playerB - 1
            }
            
            if totalBallCount >= 132 && totalBallCount < 143 {
                game13.playerB = game13.playerB - 1
            }
            
            if totalBallCount >= 143 && totalBallCount < 154 {
                game14.playerB = game14.playerB - 1
            }
            
            if totalBallCount >= 154 && totalBallCount < 165 {
                game15.playerB = game15.playerB - 1
            }
            
            
            
        }
        

       
        updateScoreLabel()
        
        
    }
    
    @IBAction func deadBallBtnPressed(_ sender: UIButton) {
        
        if sender.currentTitle == "+" {
             
            totalBallCount = totalBallCount + 1
            deadBallScore = deadBallScore + 1
            
             totals()
            
             
             
             if game1.gameTotal >= 0 && game1.gameTotal < 11 {
                 game1.deadBall = game1.deadBall + 1
             }
             
             if totalBallCount >= 12 && game2.gameTotal < 11 {
                 game2.deadBall = game2.deadBall + 1
             }
             
             if totalBallCount >= 23 && game3.gameTotal < 11 {
                 game3.deadBall = game3.deadBall + 1
             }
             
             if totalBallCount >= 34 && game4.gameTotal < 11 {
                 game4.deadBall = game4.deadBall + 1
             }
             
             if totalBallCount >= 45 && game5.gameTotal < 11 {
                 game5.deadBall = game5.deadBall + 1
             }
             
             if totalBallCount >= 56 && game6.gameTotal < 11 {
                 game6.deadBall = game6.deadBall + 1
             }
             
             if totalBallCount >= 67 && game7.gameTotal < 11 {
                 game7.deadBall = game7.deadBall + 1
             }
             
             if totalBallCount >= 78 && game8.gameTotal < 11 {
                 game8.deadBall = game8.deadBall + 1
             }
             
             if totalBallCount >= 89 && game9.gameTotal < 11 {
                 game9.deadBall = game9.deadBall + 1
             }
             
             if totalBallCount >= 100 && game10.gameTotal < 11 {
                 game10.deadBall = game10.deadBall + 1
             }
             
             if totalBallCount >= 111 && game11.gameTotal < 11 {
                 game11.deadBall = game11.deadBall + 1
             }
             
             if totalBallCount >= 122 && game12.gameTotal < 11 {
                 game12.deadBall = game12.deadBall + 1
             }
             
             if totalBallCount >= 133 && game13.gameTotal < 11 {
                 game13.deadBall = game13.deadBall + 1
             }
             
             if totalBallCount >= 144 && game14.gameTotal < 11 {
                 game14.deadBall = game14.deadBall + 1
             }
             
             if totalBallCount >= 155 && game15.gameTotal < 11 {
                 game15.deadBall = game15.deadBall + 1
             }
             
             
                 
             
             
             
         }
         
         if sender.currentTitle == "-" {
             
             totalBallCount = totalBallCount - 1
             player1Score = player1Score - 1
             
            
            totals()

             
             
             if totalBallCount >= 0 && totalBallCount < 11 {
                 game1.deadBall = game1.deadBall - 1
             }
             
             if totalBallCount >= 11 && totalBallCount < 22 {
                 game2.deadBall = game2.deadBall - 1
             }
             
             if totalBallCount >= 22 && totalBallCount < 33 {
                 game3.deadBall = game3.deadBall - 1
             }
             
             if totalBallCount >= 33 && totalBallCount < 44 {
                 game4.deadBall = game4.deadBall - 1
             }
             
             if totalBallCount >= 44 && totalBallCount < 55 {
                 game5.deadBall = game5.deadBall - 1
             }
             
             if totalBallCount >= 55 && totalBallCount < 66 {
                 game6.deadBall = game6.deadBall - 1
             }
             
             if totalBallCount >= 66 && totalBallCount < 77 {
                 game7.deadBall = game7.deadBall - 1
             }
             
             if totalBallCount >= 77 && totalBallCount < 88 {
                 game8.deadBall = game8.deadBall - 1
             }
             
             if totalBallCount >= 88 && totalBallCount < 99 {
                 game9.deadBall = game9.deadBall - 1
             }
             
             if totalBallCount >= 99 && totalBallCount < 110 {
                 game10.deadBall = game10.deadBall - 1
             }
             
             if totalBallCount >= 110 && totalBallCount < 121 {
                 game11.deadBall = game11.deadBall - 1
             }
             
             if totalBallCount >= 121 && totalBallCount < 132 {
                 game12.deadBall = game12.deadBall - 1
             }
             
             if totalBallCount >= 132 && totalBallCount < 143 {
                 game13.deadBall = game13.deadBall - 1
             }
             
             if totalBallCount >= 143 && totalBallCount < 154 {
                 game14.deadBall = game14.deadBall - 1
             }
             
             if totalBallCount >= 154 && totalBallCount < 165 {
                 game15.deadBall = game15.deadBall - 1
             }
             
             
         }
         

        
         updateScoreLabel()
            
            
        }
        
        
    func updateScoreLabel() {
        
        
        totalBallCountLabel.text = "\(totalBallCount)"
        
        player1ScoreLabel.text = "\(player1Score)"
        player2ScoreLabel.text = "\(player2Score)"
        totalDeadBallLabel.text = "\(deadBallScore)"
        
        gm1P1ScoreLabel.text = "\(game1.playerA)"
        gm1P2ScoreLabel.text = "\(game1.playerB)"
        gm1DBScoreLabel.text = "\(game1.deadBall)"
        gm1InningLabel.text = "\(game1.innings)"
        
        gm2P1ScoreLabel.text = "\(game2.playerA)"
        gm2P2ScoreLabel.text = "\(game2.playerB)"
        gm2DBScoreLabel.text = "\(game2.deadBall)"
        gm2InningLabel.text = "\(game2.innings)"


        
        gm3P1ScoreLabel.text = "\(game3.playerA)"
        gm3P2ScoreLabel.text = "\(game3.playerB)"
        gm3DBScoreLabel.text = "\(game3.deadBall)"
        gm3InningLabel.text = "\(game3.innings)"


        
        gm4P1ScoreLabel.text = "\(game4.playerA)"
        gm4P2ScoreLabel.text = "\(game4.playerB)"
        gm4DBScoreLabel.text = "\(game4.deadBall)"
        gm4InningLabel.text = "\(game4.innings)"


        
        gm5P1ScoreLabel.text = "\(game5.playerA)"
        gm5P2ScoreLabel.text = "\(game5.playerB)"
        gm5DBScoreLabel.text = "\(game5.deadBall)"
        gm5InningLabel.text = "\(game5.innings)"


        
        gm6P1ScoreLabel.text = "\(game6.playerA)"
        gm6P2ScoreLabel.text = "\(game6.playerB)"
        gm6DBScoreLabel.text = "\(game6.deadBall)"
        gm6InningLabel.text = "\(game6.innings)"


        
        gm7P1ScoreLabel.text = "\(game7.playerA)"
        gm7P2ScoreLabel.text = "\(game7.playerB)"
        gm7DBScoreLabel.text = "\(game7.deadBall)"
        gm7InningLabel.text = "\(game7.innings)"


        
        gm8P1ScoreLabel.text = "\(game8.playerA)"
        gm8P2ScoreLabel.text = "\(game8.playerB)"
        gm8DBScoreLabel.text = "\(game8.deadBall)"
        gm8InningLabel.text = "\(game8.innings)"


        
        gm9P1ScoreLabel.text = "\(game9.playerA)"
        gm9P2ScoreLabel.text = "\(game9.playerB)"
        gm9DBScoreLabel.text = "\(game9.deadBall)"
        gm9InningLabel.text = "\(game9.innings)"


        
        gm10P1ScoreLabel.text = "\(game10.playerA)"
        gm10P2ScoreLabel.text = "\(game10.playerB)"
        gm10DBScoreLabel.text = "\(game10.deadBall)"
        gm10InningLabel.text = "\(game10.innings)"


        
        gm11P1ScoreLabel.text = "\(game11.playerA)"
        gm11P2ScoreLabel.text = "\(game11.playerB)"
        gm11DBScoreLabel.text = "\(game11.deadBall)"
        gm11InningLabel.text = "\(game11.innings)"


        
        gm12P1ScoreLabel.text = "\(game12.playerA)"
        gm12P2ScoreLabel.text = "\(game12.playerB)"
        gm12DBScoreLabel.text = "\(game12.deadBall)"
        gm12InningLabel.text = "\(game12.innings)"


        
        gm13P1ScoreLabel.text = "\(game13.playerA)"
        gm13P2ScoreLabel.text = "\(game13.playerB)"
        gm13DBScoreLabel.text = "\(game13.deadBall)"
        gm13InningLabel.text = "\(game13.innings)"


        
        gm14P1ScoreLabel.text = "\(game14.playerA)"
        gm14P2ScoreLabel.text = "\(game14.playerB)"
        gm14DBScoreLabel.text = "\(game14.deadBall)"
        gm14InningLabel.text = "\(game14.innings)"


        
        gm15P1ScoreLabel.text = "\(game15.playerA)"
        gm15P2ScoreLabel.text = "\(game15.playerB)"
        gm15DBScoreLabel.text = "\(game15.deadBall)"
        gm15InningLabel.text = "\(game15.innings)"


        
    }
    
    func totals() {
        game1.gameTotal = game1.playerA + game1.playerB + game1.deadBall
        game2.gameTotal = game2.playerA + game2.playerB + game2.deadBall
        game3.gameTotal = game3.playerA + game3.playerB + game3.deadBall
        game4.gameTotal = game4.playerA + game4.playerB + game4.deadBall
        game5.gameTotal = game5.playerA + game5.playerB + game5.deadBall
        game6.gameTotal = game6.playerA + game6.playerB + game6.deadBall
        game7.gameTotal = game7.playerA + game7.playerB + game7.deadBall
        game8.gameTotal = game8.playerA + game8.playerB + game8.deadBall
        game9.gameTotal = game9.playerA + game9.playerB + game9.deadBall
        game10.gameTotal = game10.playerA + game10.playerB + game10.deadBall
        game11.gameTotal = game11.playerA + game11.playerB + game11.deadBall
        game12.gameTotal = game12.playerA + game12.playerB + game12.deadBall
        game13.gameTotal = game13.playerA + game13.playerB + game13.deadBall
        game14.gameTotal = game14.playerA + game14.playerB + game14.deadBall
        game15.gameTotal = game15.playerA + game15.playerB + game15.deadBall
    }
    
    
        
    func updateInnings() {
        
        if game1.gameTotal >= 0 && game1.gameTotal < 11 {
            game1.innings = innings
            gm1InningLabel.text = "\(game1.innings)"
        }
        
        if totalBallCount >= 12 && game2.gameTotal < 11 {
            game2.innings = innings - game1.innings
            gm2InningLabel.text = "\(game2.innings)"
        }
        
        if totalBallCount >= 23 && game3.gameTotal < 11 {
            game3.innings = innings - game2.innings - game1.innings
            gm3InningLabel.text = "\(game3.innings)"

        }
        
        if totalBallCount >= 34 && game4.gameTotal < 11 {
            game4.innings = innings - game3.innings - game2.innings - game1.innings
            gm4InningLabel.text = "\(game4.innings)"
        }
        
        if totalBallCount >= 45 && game5.gameTotal < 11 {
            game5.innings = innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm5InningLabel.text = "\(game5.innings)"
        }
        
        if totalBallCount >= 56 && game6.gameTotal < 11 {
            game6.innings = innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm6InningLabel.text = "\(game6.innings)"
        }
        
        if totalBallCount >= 67 && game7.gameTotal < 11 {
            game7.innings = innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm7InningLabel.text = "\(game7.innings)"
        }
        
        if totalBallCount >= 78 && game8.gameTotal < 11 {
            game8.innings = innings - game7.innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm8InningLabel.text = "\(game8.innings)"
        }
        
        if totalBallCount >= 89 && game9.gameTotal < 11 {
            game9.innings = innings - game8.innings - game7.innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm9InningLabel.text = "\(game9.innings)"
        }
        
        if totalBallCount >= 100 && game10.gameTotal < 11 {
            game10.innings = innings - game9.innings - game8.innings - game7.innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm10InningLabel.text = "\(game10.innings)"
        }
        
        if totalBallCount >= 111 && game11.gameTotal < 11 {
            game11.innings = innings - game10.innings - game9.innings - game8.innings - game7.innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm11InningLabel.text = "\(game11.innings)"
        }
        
        if totalBallCount >= 122 && game12.gameTotal < 11 {
            game12.innings = innings - game11.innings - game10.innings - game9.innings - game8.innings - game7.innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm12InningLabel.text = "\(game12.innings)"
        }
        
        if totalBallCount >= 133 && game13.gameTotal < 11 {
            game13.innings = innings - game12.innings - game11.innings - game10.innings - game9.innings - game8.innings - game7.innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm13InningLabel.text = "\(game13.innings)"
        }
        
        if totalBallCount >= 144 && game14.gameTotal < 11 {
            game14.innings = innings - game13.innings - game12.innings - game11.innings - game10.innings - game9.innings - game8.innings - game7.innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm14InningLabel.text = "\(game14.innings)"
        }
        
        if totalBallCount >= 155 && game15.gameTotal < 11 {
            game15.innings = innings - game14.innings - game13.innings - game12.innings - game11.innings - game10.innings - game9.innings - game8.innings - game7.innings - game6.innings - game5.innings - game4.innings - game3.innings - game2.innings - game1.innings
            gm15InningLabel.text = "\(game15.innings)"
        }
        
    }


    
    
}


    
    



