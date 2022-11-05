.class Lcom/adcolony/sdk/bg$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->i(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 2078
    iput-object p1, p0, Lcom/adcolony/sdk/bg$26;->b:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$26;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/adcolony/sdk/bg$26;->a:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2082
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2083
    check-cast v0, Ljava/lang/String;

    .line 2084
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2085
    if-eqz v3, :cond_4

    .line 2086
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2087
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2088
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 2089
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 2090
    :goto_1
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    .line 2092
    :goto_2
    const-string v6, "url"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    const-string v5, "decoded_parms"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    const-string v0, "host"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    const-string v0, "path"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    const-string v0, "source_application"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    const-string v0, "callback"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    iget-object v0, p0, Lcom/adcolony/sdk/bg$26;->b:Lcom/adcolony/sdk/bg;

    const-string v1, "application_open_url"

    invoke-virtual {v0, v1, v4}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2100
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2101
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2102
    iget-object v1, p0, Lcom/adcolony/sdk/bg$26;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2114
    :cond_0
    :goto_3
    return-void

    .line 2088
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2089
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2090
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 2103
    :catch_0
    move-exception v0

    .line 2104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity not found when calling startActivity in adcOpenUrl. Exception msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2105
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2106
    iget-object v2, p0, Lcom/adcolony/sdk/bg$26;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v2, v0, v1}, Lcom/adcolony/sdk/bg;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_3

    .line 2109
    :cond_4
    const-string v0, "Error occurred when parsing url string to URI sent from push notification"

    .line 2111
    iget-object v1, p0, Lcom/adcolony/sdk/bg$26;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adcolony/sdk/cb;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
