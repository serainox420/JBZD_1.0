.class public final Lcom/flurry/sdk/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/flurry/sdk/el;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/el;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/el;)V

    .line 31
    return-void
.end method

.method public static a(Lcom/flurry/sdk/el;)V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 51
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    const-string v1, "com.flurry.sdk.request_token"

    .line 2017
    iget-object v2, p0, Lcom/flurry/sdk/el;->a:Ljava/lang/String;

    .line 54
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v1, "com.flurry.sdk.request_secret"

    .line 2022
    iget-object v2, p0, Lcom/flurry/sdk/el;->b:Ljava/lang/String;

    .line 55
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    return-void
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/flurry/sdk/el;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/el;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Lcom/flurry/sdk/ed;->b(Lcom/flurry/sdk/el;)V

    .line 70
    return-void
.end method

.method public static b(Lcom/flurry/sdk/el;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 3097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 90
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    const-string v1, "com.flurry.sdk.access_token"

    .line 4017
    iget-object v2, p0, Lcom/flurry/sdk/el;->a:Ljava/lang/String;

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v1, "com.flurry.sdk.access_secret"

    .line 4022
    iget-object v2, p0, Lcom/flurry/sdk/el;->b:Ljava/lang/String;

    .line 94
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    return-void
.end method

.method public static c()Lcom/flurry/sdk/el;
    .locals 4

    .prologue
    .line 2082
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 2082
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2084
    const-string v1, "com.flurry.sdk.access_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2085
    const-string v2, "com.flurry.sdk.access_secret"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2086
    new-instance v2, Lcom/flurry/sdk/el;

    invoke-direct {v2, v1, v0}, Lcom/flurry/sdk/el;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v2
.end method
