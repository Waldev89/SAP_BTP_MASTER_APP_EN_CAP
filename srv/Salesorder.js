// const cds = require("@sap/cds");
// const { Orders } = cds.entity("com.logali");

// module.exports = (srv) => {
//     //GET
//     srv.on("READ", "salesOrder", async (req) => {
//         return await SELECT.from(Orders);
//     });

//     srv.after("READ", "salesOrder", (data) => {
//         return data.map((order) => (order.email = true));
//     });


//     //CREATE
//     srv.on("CREATE", "CreateOrders", async (req) => {
//         let returnData = await cds.transaction(req).run(
//             INSERT.into(Orders).entries({
//                 email: req.data.Orders.email

//             })
//         ).then((resolve, reject) => {
//             console.log("resolve", resolve);
//             console.log("reject", reject);
//             if (resolve) {
//                 return req.data;
//             } else {
//                 req.error(409, "Record not inserted");
//             }
//         });
//         console.log("Before end", returnData);
//         return returnData;
//     });
// }