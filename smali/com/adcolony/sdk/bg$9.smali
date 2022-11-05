.class Lcom/adcolony/sdk/bg$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/adcolony/sdk/bg$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/bg$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1050
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1052
    :cond_0
    const-string v1, "YvolverImpl.handleCommonResponse"

    .line 1053
    const/4 v0, 0x0

    .line 1054
    iget-object v2, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    if-nez v2, :cond_3

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response param == null in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1062
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v2, v3, v1}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1121
    :cond_2
    :goto_1
    return-void

    .line 1056
    :cond_3
    iget-object v2, p0, Lcom/adcolony/sdk/bg$9;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiKey param == null in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1058
    :cond_4
    iget-object v2, p0, Lcom/adcolony/sdk/bg$9;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback param == null in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1067
    :cond_5
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    sget-object v1, Lcom/adcolony/sdk/bn;->am:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1068
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    sget-object v1, Lcom/adcolony/sdk/bn;->am:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1070
    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->c:Ljava/lang/String;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1071
    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bg;->l(Ljava/lang/String;)V

    .line 1074
    :cond_6
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1075
    invoke-static {}, Lcom/adcolony/sdk/co;->g()J

    move-result-wide v2

    .line 1076
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1078
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(J)V

    .line 1081
    :cond_7
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "notifications"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1082
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v1, "Response contains notifications. About to get and call handleNotifications"

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1083
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "notifications"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1084
    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/util/ArrayList;)V

    .line 1087
    :cond_8
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "config_outdated"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1089
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    const-string v1, "ConfigOutdated"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V

    .line 1092
    :cond_9
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "reset_device_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1093
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->G()V

    .line 1096
    :cond_a
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    sget-object v1, Lcom/adcolony/sdk/bn;->aj:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1097
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    sget-object v3, Lcom/adcolony/sdk/bn;->aj:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1098
    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    sget-object v2, Lcom/adcolony/sdk/bn;->aj:Ljava/lang/String;

    .line 1099
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1098
    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bg;->b(Ljava/util/ArrayList;)Z

    .line 1101
    :cond_b
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "experiments"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1102
    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v2, "experiments"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bg;->h(Ljava/util/Map;)V

    .line 1104
    :cond_c
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "device_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1105
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->a(Ljava/util/Map;)V

    .line 1107
    :cond_d
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "user_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1108
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response contains user_info"

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1109
    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v2, "user_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/adcolony/sdk/bg$9;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bg;->a(Ljava/util/Map;Ljava/lang/String;)Z

    .line 1113
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "digital_items"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1114
    iget-object v1, p0, Lcom/adcolony/sdk/bg$9;->d:Lcom/adcolony/sdk/bg;

    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v2, "digital_items"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bg;->d(Ljava/util/ArrayList;)Z

    .line 1117
    :cond_f
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "stats"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1118
    iget-object v0, p0, Lcom/adcolony/sdk/bg$9;->a:Ljava/util/Map;

    const-string v1, "stats"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1119
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ce;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method
