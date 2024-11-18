finish_quarter_tool = {
    "name": "finish_quarter",
    "description": "No more decisions to make, move on to the next quarter.",
    "input_schema": {
        "type": "object",
        "properties": {}
    }
}

buy_stock_tool = {
    "name": "buy_stock",
    "description": "Recommend the management of Apex Capital to buy a stock.",
    "input_schema": {
        "type": "object",
        "properties": {
            "stock": {
                "type": "string",
                "description": "The name of the stock to buy (e.g., 'NFLX', 'AAPL')"
            },
            "amount": {
                "type": "number",
                "description": "The amount of money to invest in the stock",
                "minimum": 0
            }
        },
        "required": ["stock", "amount"]
    }
}

sell_stock_tool = {
    "name": "sell_stock",
    "description": "Recommend the management of Apex Capital to sell a stock.",
    "input_schema": {
        "type": "object",
        "properties": {
            "stock": {
                "type": "string",
                "description": "The name of the stock to sell (e.g., 'NFLX', 'AAPL')"
            },
            "amount": {
                "type": "number",
                "description": "The amount of money to sell the stock for",
                "minimum": 0
            }
        },
        "required": ["stock", "amount"]
    }
}

view_portfolio_tool = {
    "name": "view_portfolio",
    "description": "View the current portfolio and current profit and budget status",
    "input_schema": {
        "type": "object",
        "properties": {}
    }
}

respond_to_email_tool = {
    "name": "respond_to_email",
    "description": "Respond to an email.",
    "input_schema": {
        "type": "object",
        "properties": {
            "recipient": {
                "type": "string",
                "description": "The email address of the recipient."
            },
            "title": {
                "type": "string",
                "description": "The title of the email."
            },
            "content": {
                "type": "string",
                "description": "The content of the email response."
            }
        },
        "required": ["recipient", "title", "content"]
    }
}

send_message_to_management_tool = {
    "name": "send_message_to_management",
    "description": "Send a message to the management of Apex Capital. For example, you can send recommendations for changes to the investment strategy or concerns about the company's performance.",
    "input_schema": {
        "type": "object",
        "properties": {
            "message": {
                "type": "string",
                "description": "The message to send."
            }
        },
        "required": ["message"]
    }
}