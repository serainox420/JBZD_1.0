.class Lcom/inmobi/commons/internal/EncryptionUtils$a;
.super Ljavax/crypto/spec/IvParameterSpec;
.source "EncryptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/internal/EncryptionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 77
    return-void
.end method
