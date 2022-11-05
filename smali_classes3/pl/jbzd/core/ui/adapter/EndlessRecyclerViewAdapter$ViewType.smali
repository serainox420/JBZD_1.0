.class public final enum Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;
.super Ljava/lang/Enum;
.source "EndlessRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

.field public static final enum ERROR_FIRST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

.field public static final enum ERROR_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

.field public static final enum LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

.field public static final enum LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 33
    new-instance v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    const-string v2, "EMPTY"

    const/16 v3, -0xa

    invoke-direct {v1, v2, v0, v3}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    .line 34
    new-instance v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    const-string v2, "LOADING_FIST"

    const/16 v3, -0x14

    invoke-direct {v1, v2, v4, v3}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    .line 35
    new-instance v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    const-string v2, "LOADING_PAGE"

    const/16 v3, -0x1e

    invoke-direct {v1, v2, v5, v3}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    .line 36
    new-instance v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    const-string v2, "ERROR_FIRST"

    const/16 v3, -0x28

    invoke-direct {v1, v2, v6, v3}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_FIRST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    .line 37
    new-instance v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    const-string v2, "ERROR_PAGE"

    const/16 v3, -0x32

    invoke-direct {v1, v2, v7, v3}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    .line 31
    const/4 v1, 0x5

    new-array v1, v1, [Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v1, v0

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v1, v4

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v1, v5

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_FIRST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v1, v6

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v1, v7

    sput-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->b:[Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    .line 39
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->a:Landroid/util/SparseArray;

    .line 41
    invoke-static {}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->values()[Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 42
    sget-object v4, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->a:Landroid/util/SparseArray;

    iget v5, v3, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->id:I

    .line 50
    return-void
.end method

.method public static getById(ILpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;)Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->b:[Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-virtual {v0}, [Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    return-object v0
.end method
