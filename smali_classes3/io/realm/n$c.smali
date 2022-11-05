.class Lio/realm/n$c;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/n$c;->a:Ljava/lang/ThreadLocal;

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/n$c;->b:Ljava/lang/ThreadLocal;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lio/realm/n$c;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/n$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lio/realm/n$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/realm/n$c;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lio/realm/n$c;->c:I

    return v0
.end method

.method static synthetic b(Lio/realm/n$c;)Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/realm/n$c;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic c(Lio/realm/n$c;)Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/realm/n$c;->b:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic d(Lio/realm/n$c;)I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lio/realm/n$c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/realm/n$c;->c:I

    return v0
.end method

.method static synthetic e(Lio/realm/n$c;)I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lio/realm/n$c;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/realm/n$c;->c:I

    return v0
.end method
