
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProxyGlid · M-Pesa Proxy Shop</title>
    <!-- Font Awesome 6 (free) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Roboto, system-ui, sans-serif;
        }

        body {
            background: linear-gradient(145deg, #f6f9fc 0%, #e9f2f8 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 1.5rem;
        }

        /* main card */
        .shop-container {
            max-width: 1000px;
            width: 100%;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border-radius: 2.5rem;
            box-shadow: 0 25px 50px -12px rgba(0, 20, 30, 0.35), inset 0 1px 2px rgba(255,255,255,0.7);
            padding: 2.5rem 2rem;
            border: 1px solid rgba(255,255,255,0.8);
            transition: all 0.2s;
        }

        /* header */
        .logo-area {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            margin-bottom: 0.5rem;
        }

        .logo-icon {
            background: #0b2b40;
            color: #4ade80;
            width: 48px;
            height: 48px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 18px;
            font-size: 1.8rem;
            box-shadow: 0 10px 20px -5px rgba(0, 120, 80, 0.3);
        }

        h1 {
            font-size: 2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            color: #0b2b40;
            line-height: 1.2;
        }

        h1 span {
            color: #059669;
            font-weight: 800;
        }

        .tagline {
            color: #2c4b5e;
            margin-bottom: 2rem;
            font-size: 1.05rem;
            display: flex;
            align-items: center;
            gap: 8px;
            border-left: 4px solid #059669;
            padding-left: 1rem;
            background: rgba(5, 150, 105, 0.05);
            border-radius: 0 40px 40px 0;
            width: fit-content;
            padding: 0.5rem 1.2rem;
        }

        /* proxy grid */
        .proxy-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0 2.5rem;
        }

        .proxy-card {
            background: white;
            border-radius: 1.8rem;
            padding: 1.8rem 1.3rem 1.5rem;
            box-shadow: 0 8px 24px rgba(0, 30, 20, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.7);
            transition: transform 0.15s ease, box-shadow 0.2s;
            display: flex;
            flex-direction: column;
            position: relative;
            cursor: pointer;
            backdrop-filter: blur(4px);
        }

        .proxy-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 20px 30px -10px rgba(0, 80, 60, 0.2);
            border-color: #a7f3d0;
        }

        .proxy-card.selected {
            border: 2px solid #059669;
            background: #f0fdf4;
            box-shadow: 0 15px 30px -8px rgba(5, 150, 105, 0.3);
        }

        .badge {
            background: #e6f7ec;
            color: #0b5e42;
            font-weight: 600;
            font-size: 0.75rem;
            padding: 0.25rem 0.9rem;
            border-radius: 50px;
            align-self: flex-start;
            letter-spacing: 0.3px;
            margin-bottom: 1.2rem;
            text-transform: uppercase;
            border: 1px solid #a7f3d0;
        }

        .proxy-card h3 {
            font-size: 1.5rem;
            font-weight: 700;
            color: #0b2b40;
            margin-bottom: 0.25rem;
        }

        .proxy-desc {
            color: #466b7c;
            font-size: 0.9rem;
            margin-bottom: 1.25rem;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .price {
            font-size: 2rem;
            font-weight: 800;
            color: #0b2b40;
            margin-bottom: 0.25rem;
            display: flex;
            align-items: baseline;
            gap: 5px;
        }

        .price small {
            font-size: 0.9rem;
            font-weight: 500;
            color: #627d8a;
        }

        .price-currency {
            font-size: 1.1rem;
            font-weight: 600;
            color: #059669;
        }

        .duration {
            color: #5e7e8f;
            font-size: 0.85rem;
            margin-bottom: 0.5rem;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .feature-list {
            list-style: none;
            margin: 1rem 0 1.2rem;
            flex: 1;
        }

        .feature-list li {
            font-size: 0.88rem;
            color: #2d4e5e;
            padding: 0.3rem 0;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .feature-list i {
            color: #059669;
            font-size: 0.8rem;
            width: 16px;
        }

        .select-indicator {
            margin-top: 0.5rem;
            font-size: 0.85rem;
            font-weight: 600;
            color: #466b7c;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            background: #f1f9fe;
            padding: 0.5rem;
            border-radius: 50px;
            transition: all 0.1s;
        }

        .proxy-card.selected .select-indicator {
            background: #059669;
            color: white;
        }

        .proxy-card.selected .select-indicator i {
            color: white;
        }

        /* mpesa panel */
        .mpesa-panel {
            background: #0b2b40;
            border-radius: 2rem;
            padding: 1.8rem 2rem;
            margin-top: 1.2rem;
            color: white;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 1.5rem;
            box-shadow: 0 20px 30px -10px #0b2b40;
            border: 1px solid #1f4a62;
        }

        .mpesa-info {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .mpesa-logo {
            background: #00a651;
            width: 58px;
            height: 58px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 16px;
            font-size: 2rem;
            box-shadow: 0 10px 20px -5px #00a65180;
        }

        .mpesa-text h4 {
            font-size: 1.2rem;
            font-weight: 700;
            letter-spacing: -0.3px;
        }

        .mpesa-text p {
            font-size: 0.85rem;
            color: #b6d0dd;
            margin-top: 4px;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .mpesa-text p i {
            color: #4ade80;
        }

        .pay-btn {
            background: #00a651;
            border: none;
            color: white;
            font-weight: 700;
            font-size: 1.2rem;
            padding: 1rem 2.5rem;
            border-radius: 50px;
            display: flex;
            align-items: center;
            gap: 12px;
            cursor: pointer;
            transition: all 0.15s ease;
            box-shadow: 0 10px 20px -5px #00a651;
            letter-spacing: 0.3px;
            border: 1px solid #00c45a;
            white-space: nowrap;
        }

        .pay-btn i {
            font-size: 1.3rem;
        }

        .pay-btn:hover {
            background: #008c44;
            transform: scale(1.02);
            box-shadow: 0 15px 25px -5px #00a651;
        }

        .pay-btn:active {
            transform: scale(0.98);
        }

        .pay-btn:disabled {
            opacity: 0.5;
            pointer-events: none;
            filter: grayscale(0.5);
        }

        /* transaction status */
        .tx-status {
            margin-top: 1.2rem;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 0.9rem 1.2rem;
            border-radius: 50px;
            background: rgba(0, 0, 0, 0.03);
            color: #1e3d4e;
            transition: all 0.2s;
            min-height: 3.5rem;
            border-left: 5px solid #94a3b8;
            font-weight: 500;
        }

        .tx-status.success {
            background: #e6f7ec;
            border-left-color: #059669;
            color: #0b5e42;
        }

        .tx-status.pending {
            background: #fff8e7;
            border-left-color: #eab308;
            color: #854d0e;
        }

        .tx-status.error {
            background: #fee9e7;
            border-left-color: #dc2626;
            color: #991b1b;
        }

        .footer-note {
            margin-top: 1.5rem;
            text-align: center;
            color: #5d7e8e;
            font-size: 0.8rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .footer-note i {
            color: #059669;
        }

        /* modal / prompt simulation */
        .mpesa-prompt-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(5px);
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 1000;
            visibility: hidden;
            opacity: 0;
            transition: opacity 0.2s ease;
        }

        .mpesa-prompt-overlay.active {
            visibility: visible;
            opacity: 1;
        }

        .mpesa-prompt {
            background: white;
            max-width: 440px;
            width: 90%;
            border-radius: 2rem;
            padding: 2rem 1.8rem;
            text-align: center;
            box-shadow: 0 40px 60px -20px #0b2b40;
            transform: scale(0.95);
            transition: transform 0.2s;
        }

        .mpesa-prompt-overlay.active .mpesa-prompt {
            transform: scale(1);
        }

        .mpesa-prompt .green-icon {
            background: #00a651;
            color: white;
            width: 70px;
            height: 70px;
            font-size: 2.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 30px;
            margin: 0 auto 1rem;
            box-shadow: 0 12px 20px -8px #00a651;
        }

        .mpesa-prompt h2 {
            font-size: 1.7rem;
            color: #0b2b40;
            margin-bottom: 0.5rem;
            font-weight: 700;
        }

        .mpesa-prompt .amount-highlight {
            color: #059669;
            font-size: 2rem;
            font-weight: 800;
        }

        .mpesa-prompt p {
            color: #466b7c;
            margin: 0.75rem 0;
            font-size: 0.95rem;
        }

        .mpesa-prompt .phone-number {
            background: #f0f7fa;
            padding: 0.8rem;
            border-radius: 60px;
            font-weight: 600;
            color: #0b2b40;
            margin: 0.8rem 0;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            border: 1px dashed #94a3b8;
            font-size: 1.1rem;
        }

        .mpesa-prompt .phone-number i {
            color: #00a651;
        }

        .company-name-display {
            background: #e6f7ec;
            padding: 0.9rem 1rem;
            border-radius: 16px;
            margin: 0.8rem 0;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            border: 1px solid #a7f3d0;
            font-size: 1.15rem;
            font-weight: 700;
            color: #0b5e42;
            letter-spacing: 0.3px;
        }

        .company-name-display i {
            color: #059669;
            font-size: 1.4rem;
        }

        .prompt-actions {
            display: flex;
            gap: 0.8rem;
            margin-top: 1.5rem;
        }

        .prompt-actions button {
            flex: 1;
            padding: 0.9rem;
            border-radius: 40px;
            font-weight: 700;
            border: none;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.15s;
        }

        .btn-cancel {
            background: #eef2f6;
            color: #2c4b5e;
        }

        .btn-cancel:hover {
            background: #dae2e9;
        }

        .btn-simulate {
            background: #00a651;
            color: white;
        }

        .btn-simulate:hover {
            background: #008c44;
        }

        .close-prompt {
            margin-top: 0.8rem;
            background: none;
            border: none;
            color: #94a3b8;
            font-size: 0.8rem;
            cursor: pointer;
            text-decoration: underline;
        }

        .recipient-highlight {
            font-size: 0.9rem;
            color: #5e7e8f;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
            margin-top: 4px;
        }

        .recipient-highlight i {
            color: #00a651;
        }

        /* responsive */
        @media (max-width: 680px) {
            .shop-container {
                padding: 1.5rem 1.2rem;
            }

            h1 {
                font-size: 1.6rem;
            }

            .mpesa-panel {
                flex-direction: column;
                align-items: stretch;
                text-align: center;
                padding: 1.5rem;
            }

            .mpesa-info {
                justify-content: center;
            }

            .pay-btn {
                justify-content: center;
            }

            .mpesa-prompt .prompt-actions {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="shop-container">
        <!-- Header -->
        <div class="logo-area">
            <div class="logo-icon"><i class="fas fa-shield-haltered"></i></div>
            <h1>Proxy<span>Glid</span></h1>
        </div>
        <div class="tagline">
            <i class="fas fa-bolt" style="color: #059669;"></i> Secure · Fast · M-Pesa instant
        </div>

        <!-- Proxy Selection -->
        <div class="proxy-grid" id="proxyGrid">
            <!-- Datacenter Proxy - $35 -->
            <div class="proxy-card selected" data-proxy="Datacenter" data-price="35" data-id="dc-35">
                <div class="badge">POPULAR</div>
                <h3>Datacenter</h3>
                <div class="proxy-desc"><i class="fas fa-server"></i> High-speed shared IP</div>
                <div class="price"><span class="price-currency">$</span> 35 <small>/ month</small></div>
                <div class="duration"><i class="far fa-clock"></i> 30 days validity</div>
                <ul class="feature-list">
                    <li><i class="fas fa-check-circle"></i> 10 concurrent sessions</li>
                    <li><i class="fas fa-check-circle"></i> 100 GB bandwidth</li>
                    <li><i class="fas fa-check-circle"></i> US & EU locations</li>
                </ul>
                <div class="select-indicator"><i class="fas fa-circle"></i> Selected</div>
            </div>

            <!-- Residential Proxy - $37 -->
            <div class="proxy-card" data-proxy="Residential" data-price="37" data-id="res-37">
                <div class="badge">PREMIUM</div>
                <h3>Residential</h3>
                <div class="proxy-desc"><i class="fas fa-home"></i> Real home IPs</div>
                <div class="price"><span class="price-currency">$</span> 37 <small>/ month</small></div>
                <div class="duration"><i class="far fa-clock"></i> 30 days validity</div>
                <ul class="feature-list">
                    <li><i class="fas fa-check-circle"></i> 50 concurrent sessions</li>
                    <li><i class="fas fa-check-circle"></i> Unlimited bandwidth</li>
                    <li><i class="fas fa-check-circle"></i> 150+ global locations</li>
                </ul>
                <div class="select-indicator"><i class="fas fa-circle"></i> Select</div>
            </div>

            <!-- Dedicated Proxy - $40 -->
            <div class="proxy-card" data-proxy="Dedicated" data-price="40" data-id="ded-40">
                <div class="badge">ELITE</div>
                <h3>Dedicated</h3>
                <div class="proxy-desc"><i class="fas fa-lock"></i> Private, exclusive IP</div>
                <div class="price"><span class="price-currency">$</span> 40 <small>/ month</small></div>
                <div class="duration"><i class="far fa-clock"></i> 30 days validity</div>
                <ul class="feature-list">
                    <li><i class="fas fa-check-circle"></i> Unlimited sessions</li>
                    <li><i class="fas fa-check-circle"></i> Unlimited bandwidth</li>
                    <li><i class="fas fa-check-circle"></i> Dedicated account manager</li>
                </ul>
                <div class="select-indicator"><i class="fas fa-circle"></i> Select</div>
            </div>
        </div>

        <!-- M-Pesa Payment Panel -->
        <div class="mpesa-panel">
            <div class="mpesa-info">
                <div class="mpesa-logo">
                    <i class="fas fa-mobile-alt"></i>
                </div>
                <div class="mpesa-text">
                    <h4>Pay with M-Pesa</h4>
                    <p><i class="fas fa-check-circle"></i> Send to <strong>0111213264</strong> · Instant activation</p>
                </div>
            </div>
            <button class="pay-btn" id="payBtn">
                <i class="fas fa-arrow-right"></i> Pay now
            </button>
        </div>

        <!-- Transaction status message -->
        <div class="tx-status" id="txStatus">
            <i class="fas fa-info-circle"></i> Select a proxy plan and click "Pay now"
        </div>

        <div class="footer-note">
            <i class="fas fa-shield-alt"></i> 256-bit SSL secured · M-Pesa STK push simulation
        </div>
    </div>

    <!-- M-Pesa Prompt Overlay (STK push simulation) -->
    <div class="mpesa-prompt-overlay" id="mpesaPromptOverlay">
        <div class="mpesa-prompt">
            <div class="green-icon">
                <i class="fas fa-mobile-alt"></i>
            </div>
            <h2>M-Pesa Payment</h2>
            <p>Request to pay</p>
            <div class="amount-highlight" id="promptAmount">$35</div>
            <p>has been sent to your phone</p>
            <div class="phone-number">
                <i class="fas fa-phone-alt"></i> +254 111 213 264
            </div>
            <!-- Company name displayed as ProxyGlid -->
            <div class="company-name-display">
                <i class="fas fa-store"></i> ProxyGlid
            </div>
            <div class="recipient-highlight">
                <i class="fas fa-check-circle"></i> Pay to: ProxyGlid · 0111213264
            </div>
            <p style="font-size: 0.85rem; color: #5e7e8f; margin-top: 10px;">Enter your M-Pesa PIN to complete the transaction.</p>
            <div class="prompt-actions">
                <button class="btn-cancel" id="cancelPromptBtn">Cancel</button>
                <button class="btn-simulate" id="simulatePayBtn">Simulate PIN</button>
            </div>
            <button class="close-prompt" id="closePromptBtn">Close and try again</button>
        </div>
    </div>

    <script>
        (function() {
            // DOM elements
            const proxyCards = document.querySelectorAll('.proxy-card');
            const payBtn = document.getElementById('payBtn');
            const txStatus = document.getElementById('txStatus');
            const overlay = document.getElementById('mpesaPromptOverlay');
            const promptAmount = document.getElementById('promptAmount');
            const cancelPromptBtn = document.getElementById('cancelPromptBtn');
            const simulatePayBtn = document.getElementById('simulatePayBtn');
            const closePromptBtn = document.getElementById('closePromptBtn');

            // State
            let selectedProxy = {
                name: 'Datacenter',
                price: 35,
                id: 'dc-35'
            };

            // ---- Helper: update status message ----
            function setStatus(message, type = 'info') {
                txStatus.innerHTML = message;
                txStatus.className = 'tx-status';
                if (type === 'success') txStatus.classList.add('success');
                else if (type === 'pending') txStatus.classList.add('pending');
                else if (type === 'error') txStatus.classList.add('error');
                else txStatus.classList.remove('success', 'pending', 'error');
            }

            // ---- Select proxy card handler ----
            function selectCard(card) {
                // remove selected from all
                proxyCards.forEach(c => {
                    c.classList.remove('selected');
                    const indicator = c.querySelector('.select-indicator');
                    indicator.innerHTML = '<i class="fas fa-circle"></i> Select';
                });

                // add selected to clicked
                card.classList.add('selected');
                const indicator = card.querySelector('.select-indicator');
                indicator.innerHTML = '<i class="fas fa-check-circle"></i> Selected';

                // update state
                const proxyName = card.dataset.proxy;
                const price = parseInt(card.dataset.price, 10);
                const proxyId = card.dataset.id;

                selectedProxy = {
                    name: proxyName,
                    price: price,
                    id: proxyId
                };

                // reset transaction status message
                setStatus(`<i class="fas fa-info-circle"></i> Ready to pay $${price.toFixed(2)} for ${proxyName} proxy. Click "Pay now" to proceed.`, 'info');
            }

            // attach click listeners to proxy cards
            proxyCards.forEach(card => {
                card.addEventListener('click', (e) => {
                    selectCard(card);
                });
            });

            // ensure initial selected state is consistent (first card is pre-selected)
            const firstCard = document.querySelector('.proxy-card');
            if (firstCard) {
                firstCard.classList.add('selected');
                const firstIndicator = firstCard.querySelector('.select-indicator');
                firstIndicator.innerHTML = '<i class="fas fa-check-circle"></i> Selected';
                selectedProxy = {
                    name: firstCard.dataset.proxy,
                    price: parseInt(firstCard.dataset.price, 10),
                    id: firstCard.dataset.id
                };
                setStatus(`<i class="fas fa-info-circle"></i> Ready to pay $${selectedProxy.price.toFixed(2)} for ${selectedProxy.name} proxy. Click "Pay now" to proceed.`, 'info');
            }

            // ---- M-Pesa prompt simulation ----
            function showMpesaPrompt() {
                // update amount in prompt (USD)
                promptAmount.textContent = `$${selectedProxy.price.toFixed(2)}`;
                // show overlay
                overlay.classList.add('active');
                // update status to pending with M-Pesa number and company name
                setStatus(`<i class="fas fa-spinner fa-pulse"></i> M-Pesa STK push sent to <strong>0111213264</strong> (ProxyGlid). Please check your phone and enter PIN.`, 'pending');
                // disable pay button while prompt is open
                payBtn.disabled = true;
            }

            function closePrompt() {
                overlay.classList.remove('active');
                payBtn.disabled = false;
            }

            // ---- simulate successful payment ----
            function simulatePaymentSuccess() {
                closePrompt();
                // status success
                setStatus(`<i class="fas fa-check-circle"></i> Payment of $${selectedProxy.price.toFixed(2)} confirmed! Your ${selectedProxy.name} proxy is now active. (Paid to ProxyGlid · 0111213264)`, 'success');
                // disable pay button to prevent double pay (or keep? we'll disable for demo)
                payBtn.disabled = true;
                // re-enable after a while for demo
                setTimeout(() => {
                    if (overlay.classList.contains('active') === false) {
                        payBtn.disabled = false;
                    }
                }, 5000);
                // reset status message after 8 seconds to default
                setTimeout(() => {
                    setStatus(`<i class="fas fa-info-circle"></i> Select a plan and click "Pay now" to purchase another proxy.`, 'info');
                    payBtn.disabled = false;
                }, 8000);
            }

            // ---- cancel / close prompt -> status error ----
            function cancelPayment() {
                closePrompt();
                setStatus(`<i class="fas fa-times-circle"></i> Payment cancelled. You can try again.`, 'error');
                // reset status after 3 sec
                setTimeout(() => {
                    if (overlay.classList.contains('active') === false) {
                        setStatus(`<i class="fas fa-info-circle"></i> Ready to pay $${selectedProxy.price.toFixed(2)} for ${selectedProxy.name} proxy.`, 'info');
                    }
                }, 3000);
            }

            // ---- Event listeners ----
            payBtn.addEventListener('click', () => {
                showMpesaPrompt();
            });

            // cancel via cancel button in prompt
            cancelPromptBtn.addEventListener('click', (e) => {
                e.stopPropagation();
                cancelPayment();
            });

            // close prompt via X / close button
            closePromptBtn.addEventListener('click', (e) => {
                e.stopPropagation();
                cancelPayment();
            });

            // simulate successful payment (PIN entered)
            simulatePayBtn.addEventListener('click', (e) => {
                e.stopPropagation();
                simulatePaymentSuccess();
            });

            // click overlay background closes (acts like cancel)
            overlay.addEventListener('click', (e) => {
                if (e.target === overlay) {
                    cancelPayment();
                }
            });

            // also close with Escape key
            document.addEventListener('keydown', (e) => {
                if (e.key === 'Escape' && overlay.classList.contains('active')) {
                    cancelPayment();
                }
            });

            // ensure pay button is enabled initially
            payBtn.disabled = false;
        })();
    </script>
</body>
</html>
