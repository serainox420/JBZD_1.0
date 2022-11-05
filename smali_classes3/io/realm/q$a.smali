.class Lio/realm/q$a;
.super Ljava/lang/Object;
.source "RealmList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lio/realm/q;


# direct methods
.method private constructor <init>(Lio/realm/q;)V
    .locals 1

    .prologue
    .line 957
    iput-object p1, p0, Lio/realm/q$a;->d:Lio/realm/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    const/4 v0, 0x0

    iput v0, p0, Lio/realm/q$a;->a:I

    .line 968
    const/4 v0, -0x1

    iput v0, p0, Lio/realm/q$a;->b:I

    .line 975
    iget-object v0, p0, Lio/realm/q$a;->d:Lio/realm/q;

    invoke-static {v0}, Lio/realm/q;->a(Lio/realm/q;)I

    move-result v0

    iput v0, p0, Lio/realm/q$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/q;Lio/realm/q$1;)V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0, p1}, Lio/realm/q$a;-><init>(Lio/realm/q;)V

    return-void
.end method


# virtual methods
.method public a()Lio/realm/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 990
    iget-object v0, p0, Lio/realm/q$a;->d:Lio/realm/q;

    iget-object v0, v0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 991
    invoke-virtual {p0}, Lio/realm/q$a;->b()V

    .line 992
    iget v0, p0, Lio/realm/q$a;->a:I

    .line 994
    :try_start_0
    iget-object v1, p0, Lio/realm/q$a;->d:Lio/realm/q;

    invoke-virtual {v1, v0}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    .line 995
    iput v0, p0, Lio/realm/q$a;->b:I

    .line 996
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/realm/q$a;->a:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    return-object v1

    .line 998
    :catch_0
    move-exception v1

    .line 999
    invoke-virtual {p0}, Lio/realm/q$a;->b()V

    .line 1000
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/q$a;->d:Lio/realm/q;

    invoke-virtual {v2}, Lio/realm/q;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final b()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lio/realm/q$a;->d:Lio/realm/q;

    invoke-static {v0}, Lio/realm/q;->c(Lio/realm/q;)I

    move-result v0

    iget v1, p0, Lio/realm/q$a;->c:I

    if-eq v0, v1, :cond_0

    .line 1034
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1036
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lio/realm/q$a;->d:Lio/realm/q;

    iget-object v0, v0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 982
    invoke-virtual {p0}, Lio/realm/q$a;->b()V

    .line 983
    iget v0, p0, Lio/realm/q$a;->a:I

    iget-object v1, p0, Lio/realm/q$a;->d:Lio/realm/q;

    invoke-virtual {v1}, Lio/realm/q;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 957
    invoke-virtual {p0}, Lio/realm/q$a;->a()Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lio/realm/q$a;->d:Lio/realm/q;

    iget-object v0, v0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 1009
    iget v0, p0, Lio/realm/q$a;->b:I

    if-gez v0, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call remove() twice. Must call next() in between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lio/realm/q$a;->b()V

    .line 1015
    :try_start_0
    iget-object v0, p0, Lio/realm/q$a;->d:Lio/realm/q;

    iget v1, p0, Lio/realm/q$a;->b:I

    invoke-virtual {v0, v1}, Lio/realm/q;->a(I)Lio/realm/t;

    .line 1016
    iget v0, p0, Lio/realm/q$a;->b:I

    iget v1, p0, Lio/realm/q$a;->a:I

    if-ge v0, v1, :cond_1

    .line 1017
    iget v0, p0, Lio/realm/q$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/realm/q$a;->a:I

    .line 1019
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lio/realm/q$a;->b:I

    .line 1020
    iget-object v0, p0, Lio/realm/q$a;->d:Lio/realm/q;

    invoke-static {v0}, Lio/realm/q;->b(Lio/realm/q;)I

    move-result v0

    iput v0, p0, Lio/realm/q$a;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    return-void

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
