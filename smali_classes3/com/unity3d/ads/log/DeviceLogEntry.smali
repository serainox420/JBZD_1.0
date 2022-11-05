.class Lcom/unity3d/ads/log/DeviceLogEntry;
.super Ljava/lang/Object;
.source "DeviceLogEntry.java"


# instance fields
.field private _logLevel:Lcom/unity3d/ads/log/DeviceLogLevel;

.field private _originalMessage:Ljava/lang/String;

.field private _stackTraceElement:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/log/DeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/ads/log/DeviceLogLevel;

    .line 6
    iput-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    .line 10
    iput-object p1, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/ads/log/DeviceLogLevel;

    .line 11
    iput-object p2, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    .line 13
    return-void
.end method


# virtual methods
.method public getLogLevel()Lcom/unity3d/ads/log/DeviceLogLevel;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_logLevel:Lcom/unity3d/ads/log/DeviceLogLevel;

    return-object v0
.end method

.method public getParsedMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_originalMessage:Ljava/lang/String;

    .line 21
    const-string v3, "UnknownClass"

    .line 22
    const-string v2, "unknownMethod"

    .line 23
    const/4 v1, -0x1

    .line 25
    iget-object v4, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    if-eqz v4, :cond_0

    .line 26
    iget-object v1, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 27
    iget-object v1, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 28
    iget-object v1, p0, Lcom/unity3d/ads/log/DeviceLogEntry;->_stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 31
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    .line 34
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (line:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
