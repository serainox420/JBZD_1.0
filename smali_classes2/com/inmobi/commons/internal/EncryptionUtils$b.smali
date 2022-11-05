.class Lcom/inmobi/commons/internal/EncryptionUtils$b;
.super Ljava/security/spec/RSAPublicKeySpec;
.source "EncryptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/internal/EncryptionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 177
    return-void
.end method
