.class public final enum Lpl/jbzd/app/view/feed/FeedViewType;
.super Ljava/lang/Enum;
.source "FeedViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/jbzd/app/view/feed/FeedViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum COMMENT:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum FIRST_AD:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum GALLERY:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum GIF:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum PICTURE:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum UNKNOWN:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum USER_PROFILE:Lpl/jbzd/app/view/feed/FeedViewType;

.field public static final enum VIDEO:Lpl/jbzd/app/view/feed/FeedViewType;

.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lpl/jbzd/app/view/feed/FeedViewType;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lpl/jbzd/app/view/feed/FeedViewType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lpl/jbzd/app/view/feed/FeedViewType;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 13
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "PICTURE"

    const/16 v3, 0x3f2

    const-string v4, "image"

    invoke-direct {v1, v2, v0, v3, v4}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->PICTURE:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 14
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "GIF"

    const/16 v3, 0x3fc

    const-string v4, "mp4-gif"

    invoke-direct {v1, v2, v6, v3, v4}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->GIF:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 15
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "VIDEO"

    const/16 v3, 0x406

    const-string v4, "video"

    invoke-direct {v1, v2, v7, v3, v4}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->VIDEO:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 16
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "GALLERY"

    const/16 v3, 0x410

    const-string v4, "gallery"

    invoke-direct {v1, v2, v8, v3, v4}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->GALLERY:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 17
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "AD"

    const/16 v3, 0x41a

    const-string v4, "advertising"

    invoke-direct {v1, v2, v9, v3, v4}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 18
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "USER_PROFILE"

    const/4 v3, 0x5

    const/16 v4, 0x424

    const-string v5, "user_profile"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->USER_PROFILE:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 19
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "COMMENT"

    const/4 v3, 0x6

    const/16 v4, 0x42e

    const-string v5, "comment"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->COMMENT:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 20
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "EMPTY"

    const/4 v3, 0x7

    const/16 v4, 0x438

    const-string v5, "empty"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 21
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "FIRST_AD"

    const/16 v3, 0x8

    const/16 v4, 0x44c

    const-string v5, "first_ad"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->FIRST_AD:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 22
    new-instance v1, Lpl/jbzd/app/view/feed/FeedViewType;

    const-string v2, "UNKNOWN"

    const/16 v3, 0x9

    const v4, 0xf4240

    const-string v5, "unknown"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/jbzd/app/view/feed/FeedViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->UNKNOWN:Lpl/jbzd/app/view/feed/FeedViewType;

    .line 11
    const/16 v1, 0xa

    new-array v1, v1, [Lpl/jbzd/app/view/feed/FeedViewType;

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->PICTURE:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v2, v1, v0

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->GIF:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v2, v1, v6

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->VIDEO:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v2, v1, v7

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->GALLERY:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v2, v1, v8

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->USER_PROFILE:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->COMMENT:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->FIRST_AD:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->UNKNOWN:Lpl/jbzd/app/view/feed/FeedViewType;

    aput-object v3, v1, v2

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->c:[Lpl/jbzd/app/view/feed/FeedViewType;

    .line 24
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->a:Landroid/util/SparseArray;

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->b:Ljava/util/Map;

    .line 27
    invoke-static {}, Lpl/jbzd/app/view/feed/FeedViewType;->values()[Lpl/jbzd/app/view/feed/FeedViewType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 28
    sget-object v4, Lpl/jbzd/app/view/feed/FeedViewType;->a:Landroid/util/SparseArray;

    iget v5, v3, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v4, Lpl/jbzd/app/view/feed/FeedViewType;->b:Ljava/util/Map;

    iget-object v5, v3, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    .line 41
    iput-object p4, p0, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getIdByName(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->UNKNOWN:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/jbzd/app/view/feed/FeedViewType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lpl/jbzd/app/view/feed/FeedViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/FeedViewType;

    return-object v0
.end method

.method public static values()[Lpl/jbzd/app/view/feed/FeedViewType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->c:[Lpl/jbzd/app/view/feed/FeedViewType;

    invoke-virtual {v0}, [Lpl/jbzd/app/view/feed/FeedViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/jbzd/app/view/feed/FeedViewType;

    return-object v0
.end method
