.class public Lcom/facebook/ads/internal/adapters/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/util/g$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/ads/internal/util/f;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/util/f;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/util/f;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/o;->d:Lcom/facebook/ads/internal/util/f;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/o;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/ads/internal/adapters/o;->f:Ljava/util/Collection;

    iput-object p7, p0, Lcom/facebook/ads/internal/adapters/o;->g:Ljava/util/Map;

    iput-object p8, p0, Lcom/facebook/ads/internal/adapters/o;->h:Ljava/lang/String;

    iput p9, p0, Lcom/facebook/ads/internal/adapters/o;->i:I

    iput p10, p0, Lcom/facebook/ads/internal/adapters/o;->j:I

    iput p11, p0, Lcom/facebook/ads/internal/adapters/o;->k:I

    iput-object p12, p0, Lcom/facebook/ads/internal/adapters/o;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/facebook/ads/internal/adapters/o;
    .locals 13

    const/4 v2, 0x0

    const-string v0, "markup"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/h;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v0, "native_impression_report_url"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "viewability_check_initial_delay"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "viewability_check_interval"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "skip_after_seconds"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "ct"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/facebook/ads/internal/adapters/o;

    sget-object v4, Lcom/facebook/ads/internal/util/f;->a:Lcom/facebook/ads/internal/util/f;

    const-string v5, ""

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/internal/adapters/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/util/f;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;IIILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/o;
    .locals 14

    const/4 v6, 0x0

    const/4 v11, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    const-string v0, "markup"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "activation_command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "native_impression_report_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "ct"

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/util/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "invalidation_behavior"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/f;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/util/f;

    move-result-object v4

    const-string v0, "invalidation_report_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v7, "detection_strings"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/internal/util/g;->a(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v6

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v6

    goto :goto_1

    :cond_1
    const/16 v10, 0x3e8

    const-string v0, "viewability_check_initial_delay"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "viewability_check_initial_delay"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_3
    const-string v0, "viewability_check_interval"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "viewability_check_interval"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_2
    const-string v0, "skip_after_seconds"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "skip_after_seconds"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_3
    new-instance v0, Lcom/facebook/ads/internal/adapters/o;

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/internal/adapters/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/util/f;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;IIILjava/lang/String;)V

    move-object v6, v0

    goto/16 :goto_0

    :cond_4
    move v9, v11

    goto :goto_3
.end method

.method public static b(Landroid/content/Intent;)Lcom/facebook/ads/internal/adapters/o;
    .locals 13

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v0, "markup"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/h;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v0, "activation_command"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "native_impression_report_url"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "viewability_check_initial_delay"

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "viewability_check_interval"

    const/16 v4, 0x3e8

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "skipAfterSeconds"

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "ct"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/facebook/ads/internal/adapters/o;

    sget-object v4, Lcom/facebook/ads/internal/util/f;->a:Lcom/facebook/ads/internal/util/f;

    const-string v5, ""

    move-object v7, v6

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/internal/adapters/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/util/f;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;IIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->l:Ljava/lang/String;

    return-object v0
.end method

.method public D()Lcom/facebook/ads/internal/util/f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->d:Lcom/facebook/ads/internal/util/f;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->f:Ljava/util/Collection;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "markup"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/o;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/ads/internal/util/h;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "activation_command"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/o;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "native_impression_report_url"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/o;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "request_id"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/o;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "viewability_check_initial_delay"

    iget v1, p0, Lcom/facebook/ads/internal/adapters/o;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "viewability_check_interval"

    iget v1, p0, Lcom/facebook/ads/internal/adapters/o;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "skipAfterSeconds"

    iget v1, p0, Lcom/facebook/ads/internal/adapters/o;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "ct"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/o;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "facebookAd.sendImpression();"

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->g:Ljava/util/Map;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/o;->i:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/o;->j:I

    return v0
.end method

.method public i()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "markup"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/o;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/ads/internal/util/h;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "native_impression_report_url"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "request_id"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "viewability_check_initial_delay"

    iget v2, p0, Lcom/facebook/ads/internal/adapters/o;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "viewability_check_interval"

    iget v2, p0, Lcom/facebook/ads/internal/adapters/o;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "skip_after_seconds"

    iget v2, p0, Lcom/facebook/ads/internal/adapters/o;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ct"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/o;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
