.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;
.super Ljava/lang/Object;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightboxAd"
.end annotation


# instance fields
.field public fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

.field public inline:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;

.field public video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->inline:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;

    .line 58
    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    .line 59
    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    .line 60
    return-void
.end method
