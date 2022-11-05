.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;
.super Ljava/lang/Object;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field public trackingEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->uri:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    .line 90
    return-void
.end method
