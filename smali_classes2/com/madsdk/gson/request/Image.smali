.class public Lcom/madsdk/gson/request/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field public h:I

.field public mimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:I

.field public w:I


# direct methods
.method public constructor <init>(IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/madsdk/gson/request/Image;->type:I

    .line 16
    iput p2, p0, Lcom/madsdk/gson/request/Image;->w:I

    .line 17
    iput p3, p0, Lcom/madsdk/gson/request/Image;->h:I

    .line 18
    iput-object p4, p0, Lcom/madsdk/gson/request/Image;->mimes:Ljava/util/List;

    .line 19
    return-void
.end method
