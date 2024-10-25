
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!


    let movies: [FavoriteItem] = [
        FavoriteItem(title: "The Godfather", year: "1972", genre: "Crime, Drama", coverImage: UIImage(named: "img1")!),
        FavoriteItem(title: "The Dark Knight", year: "2008", genre: "Action, Crime, Drama", coverImage: UIImage(named: "img2")!),
        FavoriteItem(title: "Forrest Gump", year: "1994", genre: "Drama, Romance", coverImage: UIImage(named: "img3")!),
        FavoriteItem(title: "Pulp Fiction", year: "1994", genre: "Crime, Drama", coverImage: UIImage(named: "img4")!),
        FavoriteItem(title: "Inception", year: "2010", genre: "Sci-Fi, Action, Adventure", coverImage: UIImage(named: "img5")!),
        FavoriteItem(title: "The Shawshank Redemption", year: "1994", genre: "Drama", coverImage: UIImage(named: "img6")!),
        FavoriteItem(title: "Schindler’s List", year: "1993", genre: "Biography, Drama, History", coverImage: UIImage(named: "img7")!),
        FavoriteItem(title: "The Lord of the Rings: The Return of the King", year: "2003", genre: "Fantasy, Adventure, Drama", coverImage: UIImage(named: "img8")!),
        FavoriteItem(title: "Fight Club", year: "1999", genre: "Drama, Thriller", coverImage: UIImage(named: "img9")!),
        FavoriteItem(title: "The Matrix", year: "1999", genre: "Sci-Fi, Action", coverImage: UIImage(named: "img10")!)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    
        tableView.delegate = self
        tableView.dataSource = self
    }

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteItemCell", for: indexPath) as! FavoriteItemCell
        let book = movies[indexPath.row]
        
     
        cell.titleLabel.text = book.title
        cell.yearLabel.text = book.year
        cell.genreLabel.text = book.genre
        cell.coverImageView.image = book.coverImage
        
        
        return cell
    }
}

struct FavoriteItem {
    let title: String
    let year: String
    let genre:String
    let coverImage: UIImage
}

