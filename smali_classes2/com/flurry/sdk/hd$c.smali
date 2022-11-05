.class abstract Lcom/flurry/sdk/hd$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/flurry/sdk/hd$c;-><init>()V

    return-void
.end method

.method public static b(Lcom/flurry/sdk/cr;)I
    .locals 1

    .prologue
    .line 187
    .line 1213
    iget v0, p0, Lcom/flurry/sdk/cr;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 187
    :goto_0
    if-eqz v0, :cond_1

    .line 2195
    iget v0, p0, Lcom/flurry/sdk/cr;->a:I

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    .line 187
    :goto_1
    return v0

    .line 1213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, -0x2

    return v0
.end method

.method public abstract a(Lcom/flurry/sdk/cr;)Landroid/view/ViewGroup$LayoutParams;
.end method

.method public final c(Lcom/flurry/sdk/cr;)I
    .locals 1

    .prologue
    .line 191
    .line 2219
    iget v0, p1, Lcom/flurry/sdk/cr;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 191
    :goto_0
    if-eqz v0, :cond_1

    .line 3199
    iget v0, p1, Lcom/flurry/sdk/cr;->b:I

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    .line 191
    :goto_1
    return v0

    .line 2219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/hd$c;->a()I

    move-result v0

    goto :goto_1
.end method
