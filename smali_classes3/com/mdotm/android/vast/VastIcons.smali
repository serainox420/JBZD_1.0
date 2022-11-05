.class public Lcom/mdotm/android/vast/VastIcons;
.super Ljava/lang/Object;
.source "VastIcons.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xf206478edc0ee64L


# instance fields
.field protected iconClickThrough:Ljava/lang/String;

.field protected iconClickTracking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected iconCreativeView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected iconDuration:Ljava/lang/String;

.field protected iconHeight:I

.field protected iconImagebyteArray:[B

.field protected iconOffset:Ljava/lang/String;

.field protected iconResource:Ljava/lang/String;

.field protected iconWidth:I

.field protected iconXpos:Ljava/lang/String;

.field protected iconYpos:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastIcons;->iconDuration:Ljava/lang/String;

    .line 14
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastIcons;->iconOffset:Ljava/lang/String;

    .line 15
    const-string v0, "right"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    .line 16
    const-string v0, "bottom"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/mdotm/android/vast/VastIcons;->iconWidth:I

    .line 18
    iput v1, p0, Lcom/mdotm/android/vast/VastIcons;->iconHeight:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastIcons;->iconCreativeView:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastIcons;->iconClickTracking:Ljava/util/ArrayList;

    .line 7
    return-void
.end method
