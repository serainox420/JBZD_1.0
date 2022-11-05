.class Landroid/support/v7/widget/az$a;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static d:Landroid/support/v4/f/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/j$a",
            "<",
            "Landroid/support/v7/widget/az$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/RecyclerView$e$c;

.field c:Landroid/support/v7/widget/RecyclerView$e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Landroid/support/v4/f/j$b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/f/j$b;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/az$a;->d:Landroid/support/v4/f/j$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method static a()Landroid/support/v7/widget/az$a;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Landroid/support/v7/widget/az$a;->d:Landroid/support/v4/f/j$a;

    invoke-interface {v0}, Landroid/support/v4/f/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/az$a;

    .line 314
    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/az$a;

    invoke-direct {v0}, Landroid/support/v7/widget/az$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Landroid/support/v7/widget/az$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/az$a;->a:I

    .line 319
    iput-object v1, p0, Landroid/support/v7/widget/az$a;->b:Landroid/support/v7/widget/RecyclerView$e$c;

    .line 320
    iput-object v1, p0, Landroid/support/v7/widget/az$a;->c:Landroid/support/v7/widget/RecyclerView$e$c;

    .line 321
    sget-object v0, Landroid/support/v7/widget/az$a;->d:Landroid/support/v4/f/j$a;

    invoke-interface {v0, p0}, Landroid/support/v4/f/j$a;->a(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method static b()V
    .locals 1

    .prologue
    .line 326
    :cond_0
    sget-object v0, Landroid/support/v7/widget/az$a;->d:Landroid/support/v4/f/j$a;

    invoke-interface {v0}, Landroid/support/v4/f/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    return-void
.end method
