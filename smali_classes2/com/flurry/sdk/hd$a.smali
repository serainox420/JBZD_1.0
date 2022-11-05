.class final Lcom/flurry/sdk/hd$a;
.super Lcom/flurry/sdk/hd$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/hd$c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/cr;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    const/4 v0, 0x5

    .line 235
    invoke-static {}, Lcom/flurry/sdk/hd;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsoluteLayout is deprecated, please consider to use FrameLayout or RelativeLayout for banner ad container view"

    .line 234
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-static {p1}, Lcom/flurry/sdk/hd$a;->b(Lcom/flurry/sdk/cr;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hd$a;->c(Lcom/flurry/sdk/cr;)I

    move-result v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method
