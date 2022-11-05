.class public abstract Lcom/facebook/share/model/ShareMedia$Builder;
.super Ljava/lang/Object;
.source "ShareMedia.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/facebook/share/model/ShareMedia;",
        "B:",
        "Lcom/facebook/share/model/ShareMedia$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<TM;TB;>;"
    }
.end annotation


# instance fields
.field private params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMedia$Builder;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method static readListFrom(Landroid/os/Parcel;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const-class v0, Lcom/facebook/share/model/ShareMedia;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v2, v1

    .line 116
    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_0
    return-object v3
.end method

.method static writeListTo(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMedia;

    check-cast v0, [Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 109
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TB;"
        }
    .end annotation

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMedia;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMedia$Builder;->setParameters(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMedia$Builder;->readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareMedia$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object p0
.end method

.method public setParameters(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareMedia$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 93
    return-object p0
.end method
