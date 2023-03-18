const cds = require("@sap/cds");
const { Sales } = cds.entities("com.dmr2935");
module.exports = (srv) => {
    //********READ*************//
    srv.on("READ", "Sales", async (req) => {
        return await SELECT.from(Sales);
    });


    //********CREATE*************//
    srv.on("CREATE", "Sales", async (req) => {
        let returnData = await cds
            .transaction(req)
            .run(
                INSERT.into(Sales).entries({
                    id: req.data.id,
                    email: req.data.email,
                    firstname: req.data.firstname,
                    lastname: req.data.lastname,
                    country: req.data.country,
                })
            )
            .then((resolve, reject) => {
                console.log("resolve:", resolve);
                console.log("reject:", reject);
                if (typeof resolve !== "undefined") {
                    return req.data;
                } else {
                    req.error(409, "Record Not Inserted");
                }
            })
            .catch((err) => {
                console.log(err);
                req.error(err.code, err.message);
            });
        console.log("Before End", returnData);
        return returnData;
    });

    //********UPDATE*************//
    srv.on("UPDATE", "Sales", async (req) => {
        let returnData = await cds
            .transaction(req)
            .run([
                UPDATE(Sales, req.data.id).set({
                    firstname: req.data.firstname,
                    lastname: req.data.lastname,
                }),
            ])
            .then((resolve, reject) => {
                console.log("resolve:", resolve);
                console.log("reject:", reject);
                if (resolve[0] == 0) {
                    req.error(409, "Record Not Found");
                }
            })
            .catch((err) => {
                console.log(err);
                req.error(err.code, err.message);
            });
        console.log("Before End", returnData);
        return returnData;
    });


    //********DELETE*************//
    srv.on("DELETE", "Sales", async (req) => {
        let returnData = await cds
            .transaction(req)
            .run(
                DELETE.from(Sales).where({
                    id : req.data.id,
                })
            )
            .then(async (resolve, reject) => {
                console.log("resolve:", resolve);
                console.log("reject:", reject);
                if (resolve !== 1) {
                    req.error(409, "Record Not Found");
                }
            })
            .catch((err) => {
                console.log(err);
                req.error(err.code, err.message);
            });
        console.log("Before End", returnData);
        return await returnData;
    });
};


