.class public final Lcom/flurry/sdk/en;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/flurry/sdk/en;


# instance fields
.field public a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/en;->b:Lcom/flurry/sdk/en;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    .line 29
    return-void
.end method

.method public static a()Lcom/flurry/sdk/en;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/flurry/sdk/en;->b:Lcom/flurry/sdk/en;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/flurry/sdk/en;

    invoke-direct {v0}, Lcom/flurry/sdk/en;-><init>()V

    sput-object v0, Lcom/flurry/sdk/en;->b:Lcom/flurry/sdk/en;

    .line 35
    :cond_0
    sget-object v0, Lcom/flurry/sdk/en;->b:Lcom/flurry/sdk/en;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    :goto_0
    return-void

    .line 1048
    :cond_0
    new-instance v0, Lcom/flurry/sdk/en$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/en$1;-><init>(Lcom/flurry/sdk/en;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1068
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/eu$6;

    invoke-direct {v2, p1, v0}, Lcom/flurry/sdk/eu$6;-><init>(Ljava/lang/String;Lcom/flurry/sdk/eo$a;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
