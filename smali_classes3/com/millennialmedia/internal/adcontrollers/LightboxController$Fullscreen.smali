.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;
.super Ljava/lang/Object;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fullscreen"
.end annotation


# instance fields
.field public imageUri:Ljava/lang/String;

.field public trackingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;"
        }
    .end annotation
.end field

.field public webContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->webContent:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->imageUri:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->trackingEvents:Ljava/util/List;

    .line 107
    return-void
.end method
