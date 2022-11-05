.class public final Landroid/support/v7/media/d$a;
.super Ljava/lang/Object;
.source "MediaRouteProviderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/d$a;->a:Landroid/os/Bundle;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/d;)V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/support/v7/media/d;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/d$a;->a:Landroid/os/Bundle;

    .line 143
    invoke-virtual {p1}, Landroid/support/v7/media/d;->b()V

    .line 144
    iget-object v0, p1, Landroid/support/v7/media/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v7/media/d;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    .line 147
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/media/a;)Landroid/support/v7/media/d$a;
    .locals 2

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    .line 162
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-object p0

    .line 159
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route descriptor already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/Collection;)Landroid/support/v7/media/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v7/media/a;",
            ">;)",
            "Landroid/support/v7/media/d$a;"
        }
    .end annotation

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/a;

    .line 176
    invoke-virtual {p0, v0}, Landroid/support/v7/media/d$a;->a(Landroid/support/v7/media/a;)Landroid/support/v7/media/d$a;

    goto :goto_0

    .line 179
    :cond_1
    return-object p0
.end method

.method public a()Landroid/support/v7/media/d;
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    iget-object v0, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/a;

    invoke-virtual {v0}, Landroid/support/v7/media/a;->x()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/d$a;->a:Landroid/os/Bundle;

    const-string v1, "routes"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 194
    :cond_1
    new-instance v0, Landroid/support/v7/media/d;

    iget-object v1, p0, Landroid/support/v7/media/d$a;->a:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v7/media/d$a;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/d;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v0
.end method
