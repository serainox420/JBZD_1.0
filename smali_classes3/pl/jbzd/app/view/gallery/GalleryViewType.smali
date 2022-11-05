.class public final enum Lpl/jbzd/app/view/gallery/GalleryViewType;
.super Ljava/lang/Enum;
.source "GalleryViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/jbzd/app/view/gallery/GalleryViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PICTURE:Lpl/jbzd/app/view/gallery/GalleryViewType;

.field public static final enum SHARE:Lpl/jbzd/app/view/gallery/GalleryViewType;

.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lpl/jbzd/app/view/gallery/GalleryViewType;",
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
            "Lpl/jbzd/app/view/gallery/GalleryViewType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lpl/jbzd/app/view/gallery/GalleryViewType;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 13
    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryViewType;

    const-string v2, "PICTURE"

    const/16 v3, 0xa

    const-string v4, "picture"

    invoke-direct {v1, v2, v0, v3, v4}, Lpl/jbzd/app/view/gallery/GalleryViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/gallery/GalleryViewType;->PICTURE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    .line 14
    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryViewType;

    const-string v2, "SHARE"

    const/16 v3, 0x14

    const-string v4, "share"

    invoke-direct {v1, v2, v5, v3, v4}, Lpl/jbzd/app/view/gallery/GalleryViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/view/gallery/GalleryViewType;->SHARE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    .line 11
    const/4 v1, 0x2

    new-array v1, v1, [Lpl/jbzd/app/view/gallery/GalleryViewType;

    sget-object v2, Lpl/jbzd/app/view/gallery/GalleryViewType;->PICTURE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    aput-object v2, v1, v0

    sget-object v2, Lpl/jbzd/app/view/gallery/GalleryViewType;->SHARE:Lpl/jbzd/app/view/gallery/GalleryViewType;

    aput-object v2, v1, v5

    sput-object v1, Lpl/jbzd/app/view/gallery/GalleryViewType;->c:[Lpl/jbzd/app/view/gallery/GalleryViewType;

    .line 16
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lpl/jbzd/app/view/gallery/GalleryViewType;->a:Landroid/util/SparseArray;

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lpl/jbzd/app/view/gallery/GalleryViewType;->b:Ljava/util/Map;

    .line 19
    invoke-static {}, Lpl/jbzd/app/view/gallery/GalleryViewType;->values()[Lpl/jbzd/app/view/gallery/GalleryViewType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 20
    sget-object v4, Lpl/jbzd/app/view/gallery/GalleryViewType;->a:Landroid/util/SparseArray;

    iget v5, v3, Lpl/jbzd/app/view/gallery/GalleryViewType;->id:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v4, Lpl/jbzd/app/view/gallery/GalleryViewType;->b:Ljava/util/Map;

    iget-object v5, v3, Lpl/jbzd/app/view/gallery/GalleryViewType;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lpl/jbzd/app/view/gallery/GalleryViewType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lpl/jbzd/app/view/gallery/GalleryViewType;->id:I

    .line 33
    iput-object p4, p0, Lpl/jbzd/app/view/gallery/GalleryViewType;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/jbzd/app/view/gallery/GalleryViewType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lpl/jbzd/app/view/gallery/GalleryViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryViewType;

    return-object v0
.end method

.method public static values()[Lpl/jbzd/app/view/gallery/GalleryViewType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lpl/jbzd/app/view/gallery/GalleryViewType;->c:[Lpl/jbzd/app/view/gallery/GalleryViewType;

    invoke-virtual {v0}, [Lpl/jbzd/app/view/gallery/GalleryViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/jbzd/app/view/gallery/GalleryViewType;

    return-object v0
.end method
