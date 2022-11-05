.class public final Lcom/flurry/sdk/ex;
.super Lcom/flurry/sdk/ey;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/flurry/sdk/ey$a;->a:Lcom/flurry/sdk/ey$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ey;-><init>(Lcom/flurry/sdk/ey$a;)V

    .line 29
    const-string v0, "com.flurry.android.post_caption"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    iput-object v0, p0, Lcom/flurry/sdk/ex;->a:Ljava/lang/String;

    .line 30
    const-string v0, "com.flurry.android.post_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    iput-object v0, p0, Lcom/flurry/sdk/ex;->b:Ljava/lang/String;

    .line 31
    const-string v0, "com.flurry.android.post_ios_deeplinks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ex;->a(Ljava/lang/String;)V

    .line 32
    const-string v0, "com.flurry.android.post_android_deeplinks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;)V

    .line 33
    const-string v0, "com.flurry.android.post_weblink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ex;->c(Ljava/lang/String;)V

    .line 34
    const-string v0, "com.flurry.android.post_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1136
    iput v0, p0, Lcom/flurry/sdk/ey;->e:I

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 4
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

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v0, p0, Lcom/flurry/sdk/ex;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    :cond_0
    const-string v1, "source"

    iget-object v2, p0, Lcom/flurry/sdk/ex;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    :goto_0
    const-string v1, "deep_link_ios"

    iget-object v2, p0, Lcom/flurry/sdk/ex;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "deep_link_android"

    iget-object v2, p0, Lcom/flurry/sdk/ex;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "deep_link_web"

    iget-object v2, p0, Lcom/flurry/sdk/ex;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "type"

    const-string v2, "photo"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "caption"

    iget-object v2, p0, Lcom/flurry/sdk/ex;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "syndication_id"

    iget-object v2, p0, Lcom/flurry/sdk/ex;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/sdk/jj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    return-object v0

    .line 47
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/flurry/sdk/ex;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-string v1, "data"

    iget-object v2, p0, Lcom/flurry/sdk/ex;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method
