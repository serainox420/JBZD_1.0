.class final Lcom/flurry/sdk/hd$b;
.super Lcom/flurry/sdk/hd$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/hd$c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/cr;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 244
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/flurry/sdk/hd$b;->b(Lcom/flurry/sdk/cr;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hd$b;->c(Lcom/flurry/sdk/cr;)I

    move-result v2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method
