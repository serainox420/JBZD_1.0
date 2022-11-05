.class Lcom/adcolony/sdk/bg$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;)V
    .locals 0

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/adcolony/sdk/bg$14;->a:Lcom/adcolony/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/adcolony/sdk/bg$14;->a:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$14;->a:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miscPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1434
    iget-object v0, p0, Lcom/adcolony/sdk/bg$14;->a:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$14;->a:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    .line 1435
    iget-object v0, p0, Lcom/adcolony/sdk/bg$14;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1436
    iget-object v0, p0, Lcom/adcolony/sdk/bg$14;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adcolony/sdk/bg$14;->a:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "miscPrefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1439
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1441
    return-void
.end method
