.class public Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$REQUEST_TYPE;
.super Ljava/lang/Object;
.source "PhoenixAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REQUEST_TYPE"
.end annotation


# static fields
.field public static final FLASH:I = 0x1

.field public static final IMAGE:I = 0x2

.field public static final NATIVE:I = 0x4

.field public static final RICH_MEDIA:I = 0x40

.field public static final TEXT:I = 0x8

.field public static final THIRD_PARTY:I = 0x10

.field public static final VIDEO:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
