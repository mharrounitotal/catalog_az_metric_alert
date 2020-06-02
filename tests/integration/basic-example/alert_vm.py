import os
import unittest
from azure.common.credentials import ServicePrincipalCredentials
from azure.mgmt.monitor import MonitorManagementClient


class TestTerraformModule(unittest.TestCase):

    def setUp(self):
        try:
            subscription_id = os.environ.get('AZURE_SUBSCRIPTION_ID')
            credentials = ServicePrincipalCredentials(
                client_id=os.environ['AZURE_CLIENT_ID'],
                secret=os.environ['AZURE_CLIENT_SECRET'],
                tenant=os.environ['AZURE_TENANT_ID']
            )
            self.client = MonitorManagementClient(credentials, subscription_id)
        except:
            from azure.common.client_factory import get_client_from_cli_profile
            self.client = get_client_from_cli_profile(MonitorManagementClient)
        resource_group = "azrgy-cdptest-01"
        rs_name = "testalertkit"
        rule_name = "azcpuy-alert-01"#"test-alert01"
        subscription_id = "c4d25d9f-d0ad-4b65-bb2e-2f3bcb8b4364"
        self.resource_id = (
                           "subscriptions/{}/"
                           "resourceGroups/{}/"
                           "providers/Microsoft.Compute/virtualMachines/{}"
                       ).format(subscription_id, resource_group, rs_name)
        #self.metric_rule = self.client.alert_rules.get(resource_group, rule_name)


    def test_assert_resource_metric_type(self):
        for metric in self.client.metric_definitions.list(self.resource_id):
            self.assertTrue("{}".format(metric.name.localized_value), "Percentage CPU")
            self.assertTrue(metric.name.value, "Percentage CPU")
            self.assertTrue("unit={}".format(metric.unit), "unit=Unit.percent")

        # azure.monitor.models.MetricDefinition
            print("{}: id={}, unit={}".format(
                metric.name.localized_value,
                metric.name.value,
                metric.unit
            ))
        """
    def test_metric_rule_is_enabled(self):
        self.assertTrue(self.metric_rule.is_enabled)
        """
if __name__ == '__main__':
    unittest.main()
