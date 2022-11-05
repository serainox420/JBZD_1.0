.class Lcom/intentsoftware/addapptr/c/h$a;
.super Ljava/util/LinkedList;
.source "ServerLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3be71dae0d6181bcL


# instance fields
.field private final limit:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 18
    iput p1, p0, Lcom/intentsoftware/addapptr/c/h$a;->limit:I

    .line 19
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/c/h$a;->size()I

    move-result v0

    iget v1, p0, Lcom/intentsoftware/addapptr/c/h$a;->limit:I

    if-le v0, v1, :cond_0

    .line 25
    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
