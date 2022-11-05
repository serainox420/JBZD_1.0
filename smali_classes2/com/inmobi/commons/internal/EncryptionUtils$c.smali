.class Lcom/inmobi/commons/internal/EncryptionUtils$c;
.super Ljavax/crypto/spec/SecretKeySpec;
.source "EncryptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/internal/EncryptionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method public constructor <init>([BIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 279
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 275
    return-void
.end method
