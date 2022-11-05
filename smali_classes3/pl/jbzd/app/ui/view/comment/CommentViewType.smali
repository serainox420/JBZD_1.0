.class public final enum Lpl/jbzd/app/ui/view/comment/CommentViewType;
.super Ljava/lang/Enum;
.source "CommentViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/jbzd/app/ui/view/comment/CommentViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

.field public static final enum COMMENT_REPLIES:Lpl/jbzd/app/ui/view/comment/CommentViewType;

.field public static final enum COMMENT_SUBCOMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

.field public static final enum DEFAULT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lpl/jbzd/app/ui/view/comment/CommentViewType;",
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
            "Lpl/jbzd/app/ui/view/comment/CommentViewType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lpl/jbzd/app/ui/view/comment/CommentViewType;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 13
    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;

    const-string v2, "COMMENT"

    const/16 v3, 0xa

    const-string v4, "comment"

    invoke-direct {v1, v2, v0, v3, v4}, Lpl/jbzd/app/ui/view/comment/CommentViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    .line 14
    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;

    const-string v2, "COMMENT_REPLIES"

    const/16 v3, 0x14

    const-string v4, "comment_with_replies"

    invoke-direct {v1, v2, v5, v3, v4}, Lpl/jbzd/app/ui/view/comment/CommentViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_REPLIES:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    .line 15
    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;

    const-string v2, "COMMENT_SUBCOMMENT"

    const/16 v3, 0x1e

    const-string v4, "subcomment"

    invoke-direct {v1, v2, v6, v3, v4}, Lpl/jbzd/app/ui/view/comment/CommentViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_SUBCOMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    .line 16
    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;

    const-string v2, "DEFAULT"

    const/16 v3, 0x3c

    const-string v4, "default"

    invoke-direct {v1, v2, v7, v3, v4}, Lpl/jbzd/app/ui/view/comment/CommentViewType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->DEFAULT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    .line 11
    const/4 v1, 0x4

    new-array v1, v1, [Lpl/jbzd/app/ui/view/comment/CommentViewType;

    sget-object v2, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    aput-object v2, v1, v0

    sget-object v2, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_REPLIES:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    aput-object v2, v1, v5

    sget-object v2, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_SUBCOMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    aput-object v2, v1, v6

    sget-object v2, Lpl/jbzd/app/ui/view/comment/CommentViewType;->DEFAULT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    aput-object v2, v1, v7

    sput-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->c:[Lpl/jbzd/app/ui/view/comment/CommentViewType;

    .line 18
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->a:Landroid/util/SparseArray;

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->b:Ljava/util/Map;

    .line 21
    invoke-static {}, Lpl/jbzd/app/ui/view/comment/CommentViewType;->values()[Lpl/jbzd/app/ui/view/comment/CommentViewType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 22
    sget-object v4, Lpl/jbzd/app/ui/view/comment/CommentViewType;->a:Landroid/util/SparseArray;

    iget v5, v3, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v4, Lpl/jbzd/app/ui/view/comment/CommentViewType;->b:Ljava/util/Map;

    iget-object v5, v3, Lpl/jbzd/app/ui/view/comment/CommentViewType;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lpl/jbzd/app/ui/view/comment/CommentViewType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    .line 35
    iput-object p4, p0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/jbzd/app/ui/view/comment/CommentViewType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;

    return-object v0
.end method

.method public static values()[Lpl/jbzd/app/ui/view/comment/CommentViewType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->c:[Lpl/jbzd/app/ui/view/comment/CommentViewType;

    invoke-virtual {v0}, [Lpl/jbzd/app/ui/view/comment/CommentViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/jbzd/app/ui/view/comment/CommentViewType;

    return-object v0
.end method
