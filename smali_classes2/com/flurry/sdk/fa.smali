.class public final Lcom/flurry/sdk/fa;
.super Lcom/flurry/sdk/ey;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/flurry/sdk/ey$a;->b:Lcom/flurry/sdk/ey$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ey;-><init>(Lcom/flurry/sdk/ey$a;)V

    .line 24
    const-string v0, "com.flurry.android.post_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    iput-object v0, p0, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;

    .line 25
    const-string v0, "com.flurry.android.post_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    iput-object v0, p0, Lcom/flurry/sdk/fa;->b:Ljava/lang/String;

    .line 26
    const-string v0, "com.flurry.android.post_ios_deeplinks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fa;->a(Ljava/lang/String;)V

    .line 27
    const-string v0, "com.flurry.android.post_android_deeplinks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fa;->b(Ljava/lang/String;)V

    .line 28
    const-string v0, "com.flurry.android.post_weblink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fa;->c(Ljava/lang/String;)V

    .line 29
    const-string v0, "com.flurry.android.post_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1136
    iput v0, p0, Lcom/flurry/sdk/ey;->e:I

    .line 30
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 3
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
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v1, "title"

    iget-object v2, p0, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fa;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "body"

    iget-object v2, p0, Lcom/flurry/sdk/fa;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fa;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "deep_link_ios"

    iget-object v2, p0, Lcom/flurry/sdk/fa;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fa;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "deep_link_android"

    iget-object v2, p0, Lcom/flurry/sdk/fa;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fa;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "deep_link_web"

    iget-object v2, p0, Lcom/flurry/sdk/fa;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fa;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "type"

    const-string v2, "text"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fa;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "syndication_id"

    iget-object v2, p0, Lcom/flurry/sdk/fa;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/sdk/jj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fa;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0
.end method
