.class public final Lpl/jbzd/core/a/g;
.super Ljava/lang/Object;
.source "TypefaceProvider.java"


# static fields
.field private static a:Lpl/jbzd/core/a/g;


# instance fields
.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/Typeface;",
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

    sput-object v0, Lpl/jbzd/core/a/g;->a:Lpl/jbzd/core/a/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lpl/jbzd/core/a/g;->b:Ljava/util/WeakHashMap;

    .line 27
    return-void
.end method

.method public static a()Lpl/jbzd/core/a/g;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lpl/jbzd/core/a/g;->a:Lpl/jbzd/core/a/g;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lpl/jbzd/core/a/g;

    invoke-direct {v0}, Lpl/jbzd/core/a/g;-><init>()V

    sput-object v0, Lpl/jbzd/core/a/g;->a:Lpl/jbzd/core/a/g;

    .line 22
    :cond_0
    sget-object v0, Lpl/jbzd/core/a/g;->a:Lpl/jbzd/core/a/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lpl/jbzd/core/a/g;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 33
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lpl/jbzd/core/a/g;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-object v0
.end method
