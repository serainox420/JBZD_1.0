.class Lcom/apprupt/sdk/MRAIDView$2$2;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

.field final synthetic b:Lcom/apprupt/sdk/MRAIDView$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView$2;Lcom/apprupt/sdk/CvLauncher$ResizeProperties;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->b:Lcom/apprupt/sdk/MRAIDView$2;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->a:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 196
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->a:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->a()I

    move-result v2

    .line 197
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->a:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->b()I

    move-result v0

    .line 198
    const/4 v1, 0x1

    .line 199
    if-gez v2, :cond_4

    .line 200
    const/16 v2, 0x12c

    .line 201
    const/4 v1, 0x5

    move v3, v2

    .line 203
    :goto_0
    if-gez v0, :cond_3

    .line 204
    const/16 v2, 0x32

    .line 205
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->b:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "inline"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    or-int/2addr v0, v1

    move v1, v2

    .line 207
    :goto_2
    new-instance v2, Lcom/apprupt/sdk/mediation/Size;

    invoke-direct {v2, v0, v3, v1}, Lcom/apprupt/sdk/mediation/Size;-><init>(III)V

    .line 208
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->b:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->b:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->b:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-virtual {v0, v2}, Lcom/apprupt/sdk/CvAdWrapper;->b(Lcom/apprupt/sdk/mediation/Size;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->b:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->b:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-virtual {v0, v2}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/mediation/Size;)V

    .line 212
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->a:Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvLauncher$ResizeProperties;->c()Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$2$2;->b:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v1, v1, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/MRAIDView;->loadUrl(Ljava/lang/String;)V

    .line 216
    :cond_1
    return-void

    .line 205
    :cond_2
    const/16 v0, 0x10

    goto :goto_1

    :cond_3
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_0
.end method
