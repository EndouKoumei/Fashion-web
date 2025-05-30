import React from 'react'
import './productCard.css'
import axiosClient from '../../../api/axiosClient'
import { useNavigate } from 'react-router-dom';

function ProductCard({ product }) {
    const navigate = useNavigate();

    // Nếu không có product (truy cập trực tiếp), có thể hiển thị thông báo hoặc redirect
    if (!product) {
        return <div>Không tìm thấy sản phẩm.</div>;
    } else {
        console.log(product)
    }

    const handleAddToCart = async () => {
        try {
            const response = await axiosClient.post(`/them_vao_gio_hang?san_phamid=${product.id}`);
            alert('Thêm vào giỏ hàng thành công!');
            window.location.reload()
        } catch (error) {
            console.error('Lỗi khi thêm vào giỏ hàng:', error);
            alert('Thêm vào giỏ hàng thất bại!');
        }
    };

    const handleBuyNow = () => {
        const purchaseItem = {
            ...product,
            soLuong: 1
        };

        navigate('/pay', {
            state: {
                items: [purchaseItem],
                totalAmount: product.gia
            }
        });
    };

    return (
        <>
            <div className="app__container">
                <div className="grid">
                    <div className="grid__row product-cart">
                        <div className="product">
                            <div className="product__gallery">
                                <img
                                    className="product__image-main"
                                    src={product.sourceHinhAnh}
                                    alt={product.tenSanPham}
                                />
                            </div>

                            <div className="product__info">
                                <h1 className="product__title">
                                    {product.tenSanPham}
                                </h1>

                                <div className="product__description">
                                    <h2 className="product__description-title">Mô Tả Sản Phẩm</h2>
                                    <p>
                                        {product.moTa}
                                    </p>
                                </div>

                                <div className="product__actions">
                                    <button
                                        className="btn product__btn--cart"
                                        onClick={handleAddToCart}
                                    >
                                        Thêm Vào Giỏ Hàng
                                    </button>
                                    <button
                                        className="btn product__btn--buy"
                                        onClick={handleBuyNow}
                                    >
                                        Mua Ngay
                                    </button>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

        </>
    )
}

export default ProductCard
