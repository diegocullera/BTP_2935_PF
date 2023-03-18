using {com.dmr2935 as dmr2935} from '../db/schema';

service SalesService {
    entity SalesSrv as projection on dmr2935.Sales;
    entity ItemsSrv as projection on dmr2935.Items;
}
