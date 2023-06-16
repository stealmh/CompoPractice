import UIKit
import Kingfisher

class PhotoCell: UICollectionViewCell {
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemGray5
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func configure(data: String) {
        imageView.kf.indicatorType = .activity
        imageView.kf.setImage(with: URL(string: data))
    }
    
    private func setupView() {
        contentView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: imageView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor),
        ])
    }
    
}
