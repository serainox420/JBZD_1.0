.class final enum Lcom/mopub/mraid/MraidJavascriptCommand$5;
.super Lcom/mopub/mraid/MraidJavascriptCommand;
.source "MraidJavascriptCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidJavascriptCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/mopub/mraid/MraidJavascriptCommand$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/mopub/mraid/PlacementType;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
