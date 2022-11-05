.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;
.super Ljava/lang/Object;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inline"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

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


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;->content:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;->trackingEvents:Ljava/util/List;

    .line 76
    return-void
.end method
