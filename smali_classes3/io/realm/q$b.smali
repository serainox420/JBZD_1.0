.class Lio/realm/q$b;
.super Lio/realm/q$a;
.source "RealmList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/q",
        "<TE;>.a;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lio/realm/q;


# direct methods
.method constructor <init>(Lio/realm/q;I)V
    .locals 3

    .prologue
    .line 1041
    iput-object p1, p0, Lio/realm/q$b;->e:Lio/realm/q;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/q$a;-><init>(Lio/realm/q;Lio/realm/q$1;)V

    .line 1042
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lio/realm/q;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 1043
    iput p2, p0, Lio/realm/q$b;->a:I

    .line 1047
    return-void

    .line 1045
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting location must be a valid index: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/q;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Index was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lio/realm/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1090
    iget-object v0, p0, Lio/realm/q$b;->e:Lio/realm/q;

    iget-object v0, v0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 1091
    iget v0, p0, Lio/realm/q$b;->b:I

    if-gez v0, :cond_0

    .line 1092
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1094
    :cond_0
    invoke-virtual {p0}, Lio/realm/q$b;->b()V

    .line 1097
    :try_start_0
    iget-object v0, p0, Lio/realm/q$b;->e:Lio/realm/q;

    iget v1, p0, Lio/realm/q$b;->b:I

    invoke-virtual {v0, v1, p1}, Lio/realm/q;->b(ILio/realm/t;)Lio/realm/t;

    .line 1098
    iget-object v0, p0, Lio/realm/q$b;->e:Lio/realm/q;

    invoke-static {v0}, Lio/realm/q;->d(Lio/realm/q;)I

    move-result v0

    iput v0, p0, Lio/realm/q$b;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    return-void

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1039
    check-cast p1, Lio/realm/t;

    invoke-virtual {p0, p1}, Lio/realm/q$b;->b(Lio/realm/t;)V

    return-void
.end method

.method public b(Lio/realm/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1111
    iget-object v0, p0, Lio/realm/q$b;->e:Lio/realm/q;

    iget-object v0, v0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 1112
    invoke-virtual {p0}, Lio/realm/q$b;->b()V

    .line 1114
    :try_start_0
    iget v0, p0, Lio/realm/q$b;->a:I

    .line 1115
    iget-object v1, p0, Lio/realm/q$b;->e:Lio/realm/q;

    invoke-virtual {v1, v0, p1}, Lio/realm/q;->a(ILio/realm/t;)V

    .line 1116
    const/4 v1, -0x1

    iput v1, p0, Lio/realm/q$b;->b:I

    .line 1117
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/q$b;->a:I

    .line 1118
    iget-object v0, p0, Lio/realm/q$b;->e:Lio/realm/q;

    invoke-static {v0}, Lio/realm/q;->e(Lio/realm/q;)I

    move-result v0

    iput v0, p0, Lio/realm/q$b;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    return-void

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public c()Lio/realm/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1060
    invoke-virtual {p0}, Lio/realm/q$b;->b()V

    .line 1061
    iget v0, p0, Lio/realm/q$b;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 1063
    :try_start_0
    iget-object v1, p0, Lio/realm/q$b;->e:Lio/realm/q;

    invoke-virtual {v1, v0}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    .line 1064
    iput v0, p0, Lio/realm/q$b;->a:I

    iput v0, p0, Lio/realm/q$b;->b:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    return-object v1

    .line 1066
    :catch_0
    move-exception v1

    .line 1067
    invoke-virtual {p0}, Lio/realm/q$b;->b()V

    .line 1068
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access index less than zero. This was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Remember to check hasPrevious() before using previous()."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lio/realm/q$b;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 1076
    iget v0, p0, Lio/realm/q$b;->a:I

    return v0
.end method

.method public synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1039
    invoke-virtual {p0}, Lio/realm/q$b;->c()Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lio/realm/q$b;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1039
    check-cast p1, Lio/realm/t;

    invoke-virtual {p0, p1}, Lio/realm/q$b;->a(Lio/realm/t;)V

    return-void
.end method
