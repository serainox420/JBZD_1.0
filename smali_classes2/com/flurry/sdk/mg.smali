.class public final Lcom/flurry/sdk/mg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/flurry/sdk/mg;


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flurry/android/tumblr/Post;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/mg;->b:Lcom/flurry/sdk/mg;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/mg;->a:Landroid/util/SparseArray;

    .line 17
    return-void
.end method

.method public static a()Lcom/flurry/sdk/mg;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/flurry/sdk/mg;->b:Lcom/flurry/sdk/mg;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/flurry/sdk/mg;

    invoke-direct {v0}, Lcom/flurry/sdk/mg;-><init>()V

    sput-object v0, Lcom/flurry/sdk/mg;->b:Lcom/flurry/sdk/mg;

    .line 23
    :cond_0
    sget-object v0, Lcom/flurry/sdk/mg;->b:Lcom/flurry/sdk/mg;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/mg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 41
    return-void
.end method
