.class public Lcom/madsdk/gson/request/Asset;
.super Ljava/lang/Object;
.source "Asset.java"


# instance fields
.field public data:Lcom/madsdk/gson/request/Data;

.field public id:I

.field public img:Lcom/madsdk/gson/request/Image;

.field public required:Ljava/lang/String;

.field public title:Lcom/madsdk/gson/request/Title;

.field public video:Lcom/madsdk/gson/request/Video;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/madsdk/gson/request/Data;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/madsdk/gson/request/Asset;->id:I

    .line 34
    iput-object p2, p0, Lcom/madsdk/gson/request/Asset;->required:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/madsdk/gson/request/Asset;->data:Lcom/madsdk/gson/request/Data;

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/madsdk/gson/request/Image;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/madsdk/gson/request/Asset;->id:I

    .line 22
    iput-object p2, p0, Lcom/madsdk/gson/request/Asset;->required:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/madsdk/gson/request/Asset;->img:Lcom/madsdk/gson/request/Image;

    .line 24
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/madsdk/gson/request/Title;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/madsdk/gson/request/Asset;->id:I

    .line 16
    iput-object p2, p0, Lcom/madsdk/gson/request/Asset;->required:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/madsdk/gson/request/Asset;->title:Lcom/madsdk/gson/request/Title;

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/madsdk/gson/request/Video;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/madsdk/gson/request/Asset;->id:I

    .line 28
    iput-object p2, p0, Lcom/madsdk/gson/request/Asset;->required:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/madsdk/gson/request/Asset;->video:Lcom/madsdk/gson/request/Video;

    .line 30
    return-void
.end method
