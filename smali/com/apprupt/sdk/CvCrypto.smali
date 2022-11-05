.class Lcom/apprupt/sdk/CvCrypto;
.super Ljava/lang/Object;
.source "CvCrypto.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "JZbZbQQxDEMrEmBdtlSOfKj/EsLZfAQIktkxTT1S6zv2rpvkVxbZTKPdpmRsY8yus/c+nfP6U3p6jexoU47TtLTfmutdz6lX7h0jae7BZLUW1YpDatlHpu+0M+KOaSfp4lGydy5tvI10DnsyI2+5+Yz1VtAsnGCGB0tHEd/wFgu8ZM9zt9zEM/s9srWLihdOncFeJ1WHNM5grUkm3zMRgzbOIfaD368v08ssVqyHytXJrhul4Jq1K6X6bL+lxj7PGtTmcEX9EAz7aVY7c2bevTTm0r0I+gJ6PCjiCU1VqOau1zOH1qjx6CyDKMMxeVWoM5p97Hx9zpkMF2CacJGNgp53vtc6PBjt2iIp+MB2uKJ4j3+aL8zmNVbPNyduFTdNGj7HXd/dV1LmGARXYPfdtXu8wZ3PhXA7aFYMP7oPvWX3ztlm2+aKfvaMjg7MIq7A5/3IZe81R6jPemMOeQ49PT9+8HQwg5JcovtVMT/cwddhJXHBvfI8KslBt3usMUou/p+wsPiS3MJZ3phpngMXACIo2Ba2g1/wNFr30zNeUs19KIshneccj3uGexpcmQ8z3YpnAnqeL3Hgd8XWgyYGkxg0hm/yEaCgLZ+GvXgeLw234mNCsn9s3KI9bNEqKXUZcS4A/qaCsPAO3KtfgLG7KDvF7Dzwx+M1yFD7jIXPwJ8wa/CDdKy0rnncquXqTtpboKd4YnLR9IbPt53NBhS99C3gcG64q2NSboQD/92bRwxFFK0XoFVam3FWA/cCgNRje4CLdI8FMHeB0J6MDEoig5lO95WAukiHjZNl9ManrS5yGhN370nrPVV+9wDpeW2ftQTB7I2zGow1csFv6MJk7hN5oXaXNbkKOBSox40DHCKlX0R1Hozs8rVEUUwBYxBeEEThw232nKIRSE868p6ZYKxw1l4gWxtH9QlBIG7O3YrCWQbQ7HzMM7D0AksN70K3jcO5QwnGwUPEH3n3DdtRcP26nBXor1oXrxj7Y16EwuakOzWHGIqncDYbmkHpeIONhbAWKCIun7BNu2/JcOfCBCDrY+PDImBFt6xz9ULUeVdRfA3G8vO5HZ15MYu2+kAVG96ZHdzxUdPQwwPv4UpiMD7kjhyO4B8eSDzpg5G2ICq6ELeZb9j5yhgddJMXLnJgBs7CLJDYfyumoIrDVevN5kZTyqcHEcYuCKZT+VAV+3K8Xhz5uWJYGODw6yjUKUFAhbwOq42OYA9EAiDBnwPhqSCbRdC0Y3yVjHjUQzxQAl9zf40fCB8JA1bZB+w0P7X3jeGebyMVOAwBcnfdGozmftgVqO0GCASwwbMh1WD40vQ7BbV77Zu6VyoAnopjvg9QnXJaB6ssEWZkSgA1Ens/5z7G+GHuCx8BW7jg9kR+5jFe9aVzo3s/swtbBAbAQ6xPxj4cd6wofFBZoYcX+jAB48NYWNB4uvA3lOPu+4GHXKBJ0BuBmp250aXbsSMTj2780JuGfCnnN4tNU1KH78Bh6aZ5FNY8BllQG58evGwor40aK4hm9EIg71WIup1i2nExkORAn7L3zcHYG9i63xDxnunoFmGY9E6vZEg/UAU1C3swvxa0VyBSmQlNiNWsq7EOcCnRCxh06xcg9Ni2e741bXPgm8Q70khlNFp5Y7aYxSlEPb9nNjYK1tMwD9wLp6CVv3FaArQc9ZG9nnKjg9BC73vhDSy+831beciFYSoq4tiDofKZtI4cyJ33wEPHt5OY8SGH7XOw3eDbHw=="

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvCrypto;->a:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apprupt/sdk/CvCrypto;->a([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a([B[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object p1, Lcom/apprupt/sdk/CvCrypto;->a:[B

    .line 28
    :cond_1
    invoke-static {p0, p1}, Lcom/apprupt/sdk/CvCrypto;->b([B[B)[B

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/apprupt/sdk/CvBase64;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apprupt/sdk/CvCrypto;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 37
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 38
    :cond_0
    sget-object p1, Lcom/apprupt/sdk/CvCrypto;->a:[B

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/apprupt/sdk/CvBase64;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v0, p1}, Lcom/apprupt/sdk/CvCrypto;->b([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static b([B[B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 15
    array-length v0, p0

    new-array v3, v0, [B

    move v0, v1

    move v2, v1

    .line 17
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 18
    array-length v4, p1

    if-lt v2, v4, :cond_0

    move v2, v1

    .line 21
    :cond_0
    aget-byte v4, p0, v0

    aget-byte v5, p1, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    return-object v3
.end method
