import Vapor

struct Person: Content {
    let firstName: String
    let secondName: String
}

func routes(_ app: Application) throws {
    
    // http://127.0.0.1:8080
    app.get { req in
        return "Welcome User"
    }
    
    app.get("country") { req in
        return "Russia"
    }
    
    app.get("city") { req in
        return "Moscow"
    }
    
    app.get("info") { req in
        return ["firstName": "Maxim", "secondName" : "Solovyov", "year" : "1996", "month" : "August", "day" : "08"]
    }
    
    app.get("fullName") { req in
        return Person(firstName: "Mr", secondName: "Person")
    }
    
}
