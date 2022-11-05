.class Lcom/adcolony/sdk/bg$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->t(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$25;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1874
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUSH TOKEN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$25;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1875
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$25;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ch;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miscPrefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1878
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    .line 1880
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    const-string v1, "push_device_token"

    iget-object v2, p0, Lcom/adcolony/sdk/bg$25;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1882
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sentTokenToServer"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1884
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    .line 1885
    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1886
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1888
    iget-object v1, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    const-string v2, "registered_push_app_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1892
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1893
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bo;->p()V

    .line 1895
    iget-object v0, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    const-string v1, "NewPushToken"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V

    .line 1897
    :cond_0
    return-void

    .line 1889
    :catch_0
    move-exception v0

    .line 1890
    iget-object v1, p0, Lcom/adcolony/sdk/bg$25;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not store appVersion. NameNotFound Exception was thrown->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
