# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: messages.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "io.cucumber.messages.Wrapper" do
    optional :timestamp, :message, 16, "google.protobuf.Timestamp"
    oneof :message do
      optional :source, :message, 1, "io.cucumber.messages.Source"
      optional :gherkinDocument, :message, 2, "io.cucumber.messages.GherkinDocument"
      optional :pickle, :message, 3, "io.cucumber.messages.Pickle"
      optional :attachment, :message, 4, "io.cucumber.messages.Attachment"
      optional :testCaseStarted, :message, 5, "io.cucumber.messages.TestCaseStarted"
      optional :testStepStarted, :message, 6, "io.cucumber.messages.TestStepStarted"
      optional :testStepFinished, :message, 7, "io.cucumber.messages.TestStepFinished"
      optional :testCaseFinished, :message, 8, "io.cucumber.messages.TestCaseFinished"
      optional :testHookStarted, :message, 9, "io.cucumber.messages.TestHookStarted"
      optional :testHookFinished, :message, 10, "io.cucumber.messages.TestHookFinished"
      optional :pickleAccepted, :message, 11, "io.cucumber.messages.PickleAccepted"
      optional :pickleRejected, :message, 12, "io.cucumber.messages.PickleRejected"
      optional :testCasePrepared, :message, 13, "io.cucumber.messages.TestCasePrepared"
      optional :testRunStarted, :message, 14, "io.cucumber.messages.TestRunStarted"
      optional :testRunFinished, :message, 15, "io.cucumber.messages.TestRunFinished"
    end
  end
  add_message "io.cucumber.messages.CommandWrapper" do
    optional :id, :string, 1
    oneof :message do
      optional :commandStart, :message, 2, "io.cucumber.messages.CommandStart"
      optional :commandActionComplete, :message, 3, "io.cucumber.messages.CommandActionComplete"
      optional :commandRunBeforeTestRunHooks, :message, 4, "io.cucumber.messages.CommandRunBeforeTestRunHooks"
      optional :commandInitializeTestCase, :message, 5, "io.cucumber.messages.CommandInitializeTestCase"
      optional :commandRunBeforeTestCaseHook, :message, 6, "io.cucumber.messages.CommandRunBeforeTestCaseHook"
      optional :commandRunTestStep, :message, 7, "io.cucumber.messages.CommandRunTestStep"
      optional :commandRunAfterTestCaseHook, :message, 8, "io.cucumber.messages.CommandRunAfterTestCaseHook"
      optional :commandRunAfterTestRunHooks, :message, 9, "io.cucumber.messages.CommandRunAfterTestRunHooks"
      optional :commandGenerateSnippet, :message, 10, "io.cucumber.messages.CommandGenerateSnippet"
      optional :commandEvent, :message, 11, "io.cucumber.messages.Wrapper"
      optional :commandError, :string, 12
    end
  end
  add_message "io.cucumber.messages.SourceReference" do
    optional :uri, :string, 1
    optional :location, :message, 2, "io.cucumber.messages.Location"
  end
  add_message "io.cucumber.messages.Location" do
    optional :line, :uint32, 1
    optional :column, :uint32, 2
  end
  add_message "io.cucumber.messages.Attachment" do
    optional :source, :message, 1, "io.cucumber.messages.SourceReference"
    optional :data, :string, 2
    optional :media, :message, 3, "io.cucumber.messages.Media"
  end
  add_message "io.cucumber.messages.Media" do
    optional :encoding, :string, 1
    optional :content_type, :string, 2
  end
  add_message "io.cucumber.messages.Source" do
    optional :uri, :string, 1
    optional :data, :string, 2
    optional :media, :message, 3, "io.cucumber.messages.Media"
  end
  add_message "io.cucumber.messages.GherkinDocument" do
    optional :uri, :string, 1
    optional :feature, :message, 2, "io.cucumber.messages.Feature"
    repeated :comments, :message, 3, "io.cucumber.messages.Comment"
  end
  add_message "io.cucumber.messages.Feature" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :tags, :message, 2, "io.cucumber.messages.Tag"
    optional :language, :string, 3
    optional :keyword, :string, 4
    optional :name, :string, 5
    optional :description, :string, 6
    repeated :children, :message, 7, "io.cucumber.messages.FeatureChild"
  end
  add_message "io.cucumber.messages.FeatureChild" do
    oneof :value do
      optional :rule, :message, 1, "io.cucumber.messages.Rule"
      optional :background, :message, 2, "io.cucumber.messages.Background"
      optional :scenario, :message, 3, "io.cucumber.messages.Scenario"
    end
  end
  add_message "io.cucumber.messages.Rule" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :keyword, :string, 2
    optional :name, :string, 3
    optional :description, :string, 4
    repeated :children, :message, 5, "io.cucumber.messages.RuleChild"
  end
  add_message "io.cucumber.messages.RuleChild" do
    oneof :value do
      optional :background, :message, 1, "io.cucumber.messages.Background"
      optional :scenario, :message, 2, "io.cucumber.messages.Scenario"
    end
  end
  add_message "io.cucumber.messages.Background" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :keyword, :string, 2
    optional :name, :string, 3
    optional :description, :string, 4
    repeated :steps, :message, 5, "io.cucumber.messages.Step"
  end
  add_message "io.cucumber.messages.Scenario" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :tags, :message, 2, "io.cucumber.messages.Tag"
    optional :keyword, :string, 3
    optional :name, :string, 4
    optional :description, :string, 5
    repeated :steps, :message, 6, "io.cucumber.messages.Step"
    repeated :examples, :message, 7, "io.cucumber.messages.Examples"
  end
  add_message "io.cucumber.messages.Comment" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :text, :string, 2
  end
  add_message "io.cucumber.messages.DataTable" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :rows, :message, 2, "io.cucumber.messages.TableRow"
  end
  add_message "io.cucumber.messages.DocString" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :content_type, :string, 2
    optional :content, :string, 3
    optional :delimiter, :string, 4
  end
  add_message "io.cucumber.messages.Examples" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :tags, :message, 2, "io.cucumber.messages.Tag"
    optional :keyword, :string, 3
    optional :name, :string, 4
    optional :description, :string, 5
    optional :table_header, :message, 6, "io.cucumber.messages.TableRow"
    repeated :table_body, :message, 7, "io.cucumber.messages.TableRow"
  end
  add_message "io.cucumber.messages.Step" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :keyword, :string, 2
    optional :text, :string, 3
    oneof :argument do
      optional :doc_string, :message, 4, "io.cucumber.messages.DocString"
      optional :data_table, :message, 5, "io.cucumber.messages.DataTable"
    end
  end
  add_message "io.cucumber.messages.TableCell" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :value, :string, 2
  end
  add_message "io.cucumber.messages.TableRow" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :cells, :message, 2, "io.cucumber.messages.TableCell"
  end
  add_message "io.cucumber.messages.Tag" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :name, :string, 2
  end
  add_message "io.cucumber.messages.Pickle" do
    optional :id, :string, 1
    optional :uri, :string, 2
    optional :name, :string, 3
    optional :language, :string, 4
    repeated :steps, :message, 5, "io.cucumber.messages.PickleStep"
    repeated :tags, :message, 6, "io.cucumber.messages.PickleTag"
    repeated :locations, :message, 7, "io.cucumber.messages.Location"
  end
  add_message "io.cucumber.messages.PickleStep" do
    optional :text, :string, 1
    repeated :locations, :message, 2, "io.cucumber.messages.Location"
    oneof :argument do
      optional :doc_string, :message, 3, "io.cucumber.messages.PickleDocString"
      optional :data_table, :message, 4, "io.cucumber.messages.PickleTable"
    end
  end
  add_message "io.cucumber.messages.PickleDocString" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :contentType, :string, 2
    optional :content, :string, 3
  end
  add_message "io.cucumber.messages.PickleTable" do
    repeated :rows, :message, 1, "io.cucumber.messages.PickleTableRow"
  end
  add_message "io.cucumber.messages.PickleTableCell" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :value, :string, 2
  end
  add_message "io.cucumber.messages.PickleTableRow" do
    repeated :cells, :message, 1, "io.cucumber.messages.PickleTableCell"
  end
  add_message "io.cucumber.messages.PickleTag" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :name, :string, 2
  end
  add_message "io.cucumber.messages.PickleAccepted" do
    optional :pickleId, :string, 1
  end
  add_message "io.cucumber.messages.PickleRejected" do
    optional :pickleId, :string, 2
  end
  add_message "io.cucumber.messages.TestRunStarted" do
  end
  add_message "io.cucumber.messages.TestCasePreparedStep" do
    optional :sourceLocation, :message, 1, "io.cucumber.messages.SourceReference"
    optional :actionLocation, :message, 2, "io.cucumber.messages.SourceReference"
  end
  add_message "io.cucumber.messages.TestCasePrepared" do
    optional :pickleId, :string, 1
    repeated :steps, :message, 2, "io.cucumber.messages.TestCasePreparedStep"
  end
  add_message "io.cucumber.messages.TestCaseStarted" do
    optional :pickleId, :string, 1
  end
  add_message "io.cucumber.messages.TestCaseFinished" do
    optional :pickleId, :string, 1
    optional :testResult, :message, 3, "io.cucumber.messages.TestResult"
  end
  add_message "io.cucumber.messages.TestStepStarted" do
    optional :pickleId, :string, 1
    optional :index, :uint32, 2
  end
  add_message "io.cucumber.messages.TestStepFinished" do
    optional :pickleId, :string, 1
    optional :index, :uint32, 2
    optional :testResult, :message, 3, "io.cucumber.messages.TestResult"
  end
  add_message "io.cucumber.messages.TestHookStarted" do
    optional :pickleId, :string, 1
  end
  add_message "io.cucumber.messages.TestHookFinished" do
    optional :pickleId, :string, 1
    optional :testResult, :message, 2, "io.cucumber.messages.TestResult"
  end
  add_message "io.cucumber.messages.TestResult" do
    optional :status, :enum, 1, "io.cucumber.messages.Status"
    optional :message, :string, 2
    optional :durationNanos, :uint32, 3
  end
  add_message "io.cucumber.messages.TestRunFinished" do
    optional :success, :bool, 1
  end
  add_message "io.cucumber.messages.CommandStart" do
    optional :baseDirectory, :string, 2
    optional :sourcesConfig, :message, 3, "io.cucumber.messages.SourcesConfig"
    optional :runtimeConfig, :message, 4, "io.cucumber.messages.RuntimeConfig"
    optional :supportCodeConfig, :message, 5, "io.cucumber.messages.SupportCodeConfig"
  end
  add_message "io.cucumber.messages.SourcesConfig" do
    repeated :absolutePaths, :string, 1
    optional :language, :string, 2
    optional :filters, :message, 3, "io.cucumber.messages.SourcesFilterConfig"
    optional :order, :message, 4, "io.cucumber.messages.SourcesOrder"
  end
  add_message "io.cucumber.messages.SourcesFilterConfig" do
    optional :tagExpression, :string, 1
    repeated :nameRegularExpressions, :string, 2
    repeated :uriToLinesMapping, :message, 3, "io.cucumber.messages.UriToLinesMapping"
  end
  add_message "io.cucumber.messages.UriToLinesMapping" do
    optional :absolutePath, :string, 1
    repeated :lines, :uint64, 2
  end
  add_message "io.cucumber.messages.SourcesOrder" do
    optional :type, :enum, 1, "io.cucumber.messages.SourcesOrderType"
    optional :seed, :uint64, 2
  end
  add_message "io.cucumber.messages.RuntimeConfig" do
    optional :isFailFast, :bool, 1
    optional :isDryRun, :bool, 2
    optional :isStrict, :bool, 3
    optional :maxParallel, :uint64, 4
  end
  add_message "io.cucumber.messages.SupportCodeConfig" do
    repeated :beforeTestCaseHookDefinitionConfigs, :message, 1, "io.cucumber.messages.TestCaseHookDefinitionConfig"
    repeated :afterTestCaseHookDefinitionConfigs, :message, 2, "io.cucumber.messages.TestCaseHookDefinitionConfig"
    repeated :stepDefinitionConfigs, :message, 3, "io.cucumber.messages.StepDefinitionConfig"
    repeated :parameterTypeConfigs, :message, 4, "io.cucumber.messages.ParameterTypeConfig"
  end
  add_message "io.cucumber.messages.TestCaseHookDefinitionConfig" do
    optional :id, :string, 1
    optional :tagExpression, :string, 2
    optional :location, :message, 3, "io.cucumber.messages.SourceReference"
  end
  add_message "io.cucumber.messages.StepDefinitionConfig" do
    optional :id, :string, 1
    optional :pattern, :message, 2, "io.cucumber.messages.StepDefinitionPattern"
    optional :location, :message, 3, "io.cucumber.messages.SourceReference"
  end
  add_message "io.cucumber.messages.StepDefinitionPattern" do
    optional :source, :string, 1
    optional :type, :enum, 2, "io.cucumber.messages.StepDefinitionPatternType"
  end
  add_message "io.cucumber.messages.ParameterTypeConfig" do
    optional :name, :string, 1
    repeated :regularExpressions, :string, 2
    optional :preferForRegularExpressionMatch, :bool, 3
    optional :useForSnippets, :bool, 4
  end
  add_message "io.cucumber.messages.CommandActionComplete" do
    optional :completedId, :string, 1
    oneof :result do
      optional :testResult, :message, 2, "io.cucumber.messages.TestResult"
      optional :snippet, :string, 3
    end
  end
  add_message "io.cucumber.messages.CommandRunBeforeTestRunHooks" do
  end
  add_message "io.cucumber.messages.CommandRunAfterTestRunHooks" do
  end
  add_message "io.cucumber.messages.CommandInitializeTestCase" do
    optional :testCaseId, :string, 1
    optional :pickle, :message, 2, "io.cucumber.messages.Pickle"
  end
  add_message "io.cucumber.messages.CommandRunBeforeTestCaseHook" do
    optional :testCaseId, :string, 1
    optional :testCaseHookDefinitionId, :string, 2
  end
  add_message "io.cucumber.messages.CommandRunAfterTestCaseHook" do
    optional :testCaseId, :string, 1
    optional :testCaseHookDefinitionId, :string, 2
  end
  add_message "io.cucumber.messages.CommandRunTestStep" do
    optional :testCaseId, :string, 1
    optional :stepDefinitionId, :string, 2
    repeated :patternMatches, :message, 3, "io.cucumber.messages.PatternMatch"
  end
  add_message "io.cucumber.messages.PatternMatch" do
    repeated :captures, :string, 1
    optional :parameterTypeName, :string, 2
    oneof :pickleArgument do
      optional :doc_string, :message, 3, "io.cucumber.messages.PickleDocString"
      optional :data_table, :message, 4, "io.cucumber.messages.PickleTable"
    end
  end
  add_message "io.cucumber.messages.CommandGenerateSnippet" do
    repeated :generatedExpressions, :message, 1, "io.cucumber.messages.GeneratedExpression"
    oneof :pickleArgument do
      optional :doc_string, :message, 2, "io.cucumber.messages.PickleDocString"
      optional :data_table, :message, 3, "io.cucumber.messages.PickleTable"
    end
  end
  add_message "io.cucumber.messages.GeneratedExpression" do
    optional :text, :string, 1
    repeated :parameterTypeNames, :string, 2
  end
  add_enum "io.cucumber.messages.Status" do
    value :AMBIGUOUS, 0
    value :FAILED, 1
    value :PASSED, 2
    value :PENDING, 3
    value :SKIPPED, 4
    value :UNDEFINED, 5
  end
  add_enum "io.cucumber.messages.SourcesOrderType" do
    value :ORDER_OF_DEFINITION, 0
    value :RANDOM, 1
  end
  add_enum "io.cucumber.messages.StepDefinitionPatternType" do
    value :CUCUMBER_EXPRESSION, 0
    value :REGULAR_EXPRESSION, 1
  end
end

module Cucumber
  module Messages
    Wrapper = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Wrapper").msgclass
    CommandWrapper = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandWrapper").msgclass
    SourceReference = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.SourceReference").msgclass
    Location = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Location").msgclass
    Attachment = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Attachment").msgclass
    Media = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Media").msgclass
    Source = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Source").msgclass
    GherkinDocument = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.GherkinDocument").msgclass
    Feature = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Feature").msgclass
    FeatureChild = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.FeatureChild").msgclass
    Rule = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Rule").msgclass
    RuleChild = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.RuleChild").msgclass
    Background = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Background").msgclass
    Scenario = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Scenario").msgclass
    Comment = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Comment").msgclass
    DataTable = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.DataTable").msgclass
    DocString = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.DocString").msgclass
    Examples = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Examples").msgclass
    Step = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Step").msgclass
    TableCell = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TableCell").msgclass
    TableRow = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TableRow").msgclass
    Tag = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Tag").msgclass
    Pickle = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Pickle").msgclass
    PickleStep = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleStep").msgclass
    PickleDocString = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleDocString").msgclass
    PickleTable = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleTable").msgclass
    PickleTableCell = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleTableCell").msgclass
    PickleTableRow = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleTableRow").msgclass
    PickleTag = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleTag").msgclass
    PickleAccepted = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleAccepted").msgclass
    PickleRejected = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleRejected").msgclass
    TestRunStarted = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestRunStarted").msgclass
    TestCasePreparedStep = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestCasePreparedStep").msgclass
    TestCasePrepared = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestCasePrepared").msgclass
    TestCaseStarted = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestCaseStarted").msgclass
    TestCaseFinished = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestCaseFinished").msgclass
    TestStepStarted = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestStepStarted").msgclass
    TestStepFinished = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestStepFinished").msgclass
    TestHookStarted = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestHookStarted").msgclass
    TestHookFinished = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestHookFinished").msgclass
    TestResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestResult").msgclass
    TestRunFinished = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestRunFinished").msgclass
    CommandStart = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandStart").msgclass
    SourcesConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.SourcesConfig").msgclass
    SourcesFilterConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.SourcesFilterConfig").msgclass
    UriToLinesMapping = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.UriToLinesMapping").msgclass
    SourcesOrder = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.SourcesOrder").msgclass
    RuntimeConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.RuntimeConfig").msgclass
    SupportCodeConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.SupportCodeConfig").msgclass
    TestCaseHookDefinitionConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestCaseHookDefinitionConfig").msgclass
    StepDefinitionConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.StepDefinitionConfig").msgclass
    StepDefinitionPattern = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.StepDefinitionPattern").msgclass
    ParameterTypeConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.ParameterTypeConfig").msgclass
    CommandActionComplete = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandActionComplete").msgclass
    CommandRunBeforeTestRunHooks = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandRunBeforeTestRunHooks").msgclass
    CommandRunAfterTestRunHooks = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandRunAfterTestRunHooks").msgclass
    CommandInitializeTestCase = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandInitializeTestCase").msgclass
    CommandRunBeforeTestCaseHook = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandRunBeforeTestCaseHook").msgclass
    CommandRunAfterTestCaseHook = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandRunAfterTestCaseHook").msgclass
    CommandRunTestStep = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandRunTestStep").msgclass
    PatternMatch = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PatternMatch").msgclass
    CommandGenerateSnippet = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.CommandGenerateSnippet").msgclass
    GeneratedExpression = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.GeneratedExpression").msgclass
    Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Status").enummodule
    SourcesOrderType = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.SourcesOrderType").enummodule
    StepDefinitionPatternType = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.StepDefinitionPatternType").enummodule
  end
end
