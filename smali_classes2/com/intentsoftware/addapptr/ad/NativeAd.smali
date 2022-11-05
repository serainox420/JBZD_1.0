.class public abstract Lcom/intentsoftware/addapptr/ad/NativeAd;
.super Lcom/intentsoftware/addapptr/ad/a;
.source "NativeAd.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/ad/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/ad/NativeAd$Type;,
        Lcom/intentsoftware/addapptr/ad/NativeAd$a;
    }
.end annotation


# static fields
.field public static final ADVERTISER_TEXT_ASSET:Ljava/lang/String; = "advertiser"

.field public static final CALL_TO_ACTION_TEXT_ASSET:Ljava/lang/String; = "cta"

.field public static final DESCRIPTION_TEXT_ASSET:Ljava/lang/String; = "description"

.field public static final ICON_IMAGE_ASSET:Ljava/lang/String; = "icon"

.field public static final MAIN_IMAGE_ASSET:Ljava/lang/String; = "main"

.field public static final TITLE_TEXT_ASSET:Ljava/lang/String; = "headline"


# instance fields
.field private final assets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rating:Lcom/intentsoftware/addapptr/ad/NativeAd$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/a;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/ad/NativeAd;->assets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract attachToLayout(Landroid/view/ViewGroup;)V
.end method

.method public final detachFromLayout()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->unload()V

    .line 77
    return-void
.end method

.method public getAdType()Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->UNKNOWN:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    return-object v0
.end method

.method public getAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/NativeAd;->assets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public abstract getBrandingLogo()Landroid/view/View;
.end method

.method public final getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getRating()Lcom/intentsoftware/addapptr/ad/NativeAd$a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/NativeAd;->rating:Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    return-object v0
.end method

.method protected setAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/ad/NativeAd;->assets:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method protected setRating(Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/NativeAd;->rating:Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getAdType()Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unload()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->setInteractionListener(Lcom/intentsoftware/addapptr/ad/b;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->setLoadListener(Lcom/intentsoftware/addapptr/ad/c;)V

    .line 88
    return-void
.end method
