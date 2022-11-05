.class Lcom/adcolony/sdk/ADCNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/adcolony/sdk/ADCNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/adcolony/sdk/ADCNative;

    invoke-direct {v0}, Lcom/adcolony/sdk/ADCNative;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/ADCNative;->a:Lcom/adcolony/sdk/ADCNative;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native nativeCreateSceneController(II)V
.end method

.method static native nativeCreateTexture(IIILjava/lang/String;Ljava/nio/ByteBuffer;IIII)V
.end method

.method static native nativeDeleteSceneController(II)V
.end method

.method static native nativeHelloWorld()V
.end method

.method static native nativeIsArm()Z
.end method

.method static native nativeNeonSupported()Z
.end method

.method static native nativeRender(IIII)V
.end method
