.class final Lcom/flurry/sdk/hd$d;
.super Lcom/flurry/sdk/hd$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/hd$c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/cr;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lcom/flurry/sdk/hd$d;->b(Lcom/flurry/sdk/cr;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hd$d;->c(Lcom/flurry/sdk/cr;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
